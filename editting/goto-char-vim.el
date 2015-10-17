;;; goto-char.el --- Go to char

;; Filename: goto-char.el
;; Description: Go to char
;; Author: Andy Stewart lazycat.manatee@gmail.com
;; Maintainer: Andy Stewart lazycat.manatee@gmail.com
;; Copyright (C) 2009, Andy Stewart, all rights reserved.
;; Created: 2009-01-10 23:36:01
;; Version: 0.1
;; Last-Updated: 2009-01-10 23:36:01
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/goto-char.el
;; Keywords:
;; Compatibility: GNU Emacs 23.0.60.1
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Go to char.
;;
;; This package is simple forward or backward character.
;;
;; Below are commands you can use:
;;
;; `goto-char-forward'         goto char forward.
;; `goto-char-backward'        goto char backward.
;; `goto-char-forward-word'    goto char forward with word.
;; `goto-char-backward-word'   goto char backward with word.
;;

;;; Installation:
;;
;; Put goto-char.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'goto-char)
;;
;; No need more.

;;; Change log:
;;
;; 2009/01/10
;;      * First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require


;;; Code:
(defface goto-char-highlight
  '((((class color) (background dark))
     (:underline "Gold")))
  "Face for highlight current char."
  :group 'basic-faces)

(defvar goto-char-highlight-face 'goto-char-highlight
  "The face variable for `goto-char-highlight'.")

(defvar goto-char-highlight-overlay nil
  "The overlay of `goto-char-highlight-face'.")

(defun goto-char-highlight-overlay (highlight-point)
  "Highlight overlay that search char."
  (save-excursion
    (goto-char-clean-highlight-overlay)
    (remove-overlays highlight-point (+ highlight-point 1) goto-char-highlight-overlay goto-char-highlight-face)
    (setq goto-char-highlight-overlay (make-overlay highlight-point (+ highlight-point 1)))
    (overlay-put goto-char-highlight-overlay 'face goto-char-highlight-face)))

(defun goto-char-clean-highlight-overlay ()
  "Clean highlight overlay that search char."
  (when goto-char-highlight-overlay
    (delete-overlay goto-char-highlight-overlay)
    (setq goto-char-highlight-overlay nil)))

(defun goto-char-forward (n char)
  "Go to same character as input forward."
  (interactive "p\ncGo to char (forward): ")
  (unwind-protect
      (progn
        (search-forward (string char) nil nil n)
        (goto-char-highlight-overlay (- (point) 1))
        (message "Search %c backward." char)
        (while (char-equal (read-char) char)
          (search-forward (string char) nil nil n)
          (goto-char-highlight-overlay (- (point) 1))
          (message "Search %c backward." char))
        (setq unread-command-events (list last-input-event)))
    (goto-char-clean-highlight-overlay)))

(defun goto-char-backward (n char)
  "Go to same character as input backward."
  (interactive "p\ncGo to char (backward): ")
  (unwind-protect
      (progn
        (search-backward (string char) nil nil n)
        (goto-char-highlight-overlay (point))
        (message "Search %c backward." char)
        (while (char-equal (read-char) char)
          (search-backward (string char) nil nil n)
          (goto-char-highlight-overlay (point))
          (message "Search %c backward." char))
        (setq unread-command-events (list last-input-event)))
    (goto-char-clean-highlight-overlay)))

(defun goto-char-forward-word (n char)
  "Go to same character as input forward."
  (interactive "p\ncGo to char (forward word): ")
  (unwind-protect
      (progn
        (search-forward (string char) nil nil n)
        (goto-char-highlight-overlay (- (point) 1))
        (message "Search %c forward." char)
        (while (char-equal (read-char) char)
          (forward-word n)
          (search-forward (string char) nil nil n)
          (goto-char-highlight-overlay (- (point) 1))
          (message "Search %c forward." char))
        (setq unread-command-events (list last-input-event)))
    (goto-char-clean-highlight-overlay)))

(defun goto-char-backward-word (n char)
  "Go to same character as input backward."
  (interactive "p\ncGo to char (backward word): ")
  (unwind-protect
      (progn
        (search-backward (string char) nil nil n)
        (goto-char-highlight-overlay (point))
        (message "Search %c backward." char)
        (while (char-equal (read-char) char)
          (backward-word n)
          (search-backward (string char) nil nil n)
          (goto-char-highlight-overlay (point))
          (message "Search %c backward." char))
        (setq unread-command-events (list last-input-event)))
    (goto-char-clean-highlight-overlay)))

(provide 'goto-char)

;;; goto-char.el ends here

;;; LocalWords:  ncGo
