;;; haidang-key-binding.el --- some key binding to edit faster

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debian>
;; Keywords: convenience

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

;; kill from start of line to point. As reverse method of kill-line
(global-unset-key (kbd "C-S-k"))
(defun kill-to-beginning-of-line (&optional arg)
  (interactive "P")
  "Kill from start of line to point. As a reverse method of kill-line"
  (if (equal arg nil)
      (kill-line 0)
    (if (equal arg 0)
	(kill-line nil)
      (kill-line (- arg)))))
(global-set-key (kbd "C-S-k") 'kill-to-beginning-of-line)

;; delete char or untabify
(global-unset-key (kbd "C-S-d"))
(global-set-key (kbd "C-S-d") 'backward-delete-char-untabify)

;; First, move to start of line, then open-line (C-o). Bound to C-S-o. Like I_O in Vim. ==>bound to C-M-S-o
;; New line and indent ==> bound to C-S-O. (like I_o in vim)
(fset 'new-line-before
      (lambda (&optional arg) "Move to start of line, then C-o to open new line before." (interactive "p") (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))
(global-unset-key (kbd "C-M-S-o"))
(global-set-key (kbd "C-M-S-o") 'open-line-before)

(fset 'new-indent-line
   (lambda (&optional arg) "New indent line after current." (interactive "p") (kmacro-exec-ring-item (quote ("
" 0 "%d")) arg)))
(global-unset-key (kbd "C-S-o"))
(global-set-key (kbd "C-S-o") 'new-indent-line)

;; goto a character, like f in Vim
(load (expand-file-name "~/emacs-haidang/editting/goto-char-vim.el"))
(global-unset-key (kbd "C-S-z"))
(global-set-key (kbd "C-S-z") 'goto-char-forward)
;; (global-set-key (kbd "C-S-z") '(lambda (&optional arg)
;; 				 (interactive "P")
;; 				 "Set cursor after character if exist"
;; 				 (if (< arg 0)
;; 				     (goto-char-backward nil)
;; 				   (goto-char-forward nil))))

;; duplicate current region if having one. Otherwise, duplicate current line.
;; source http://tuxicity.se/emacs/elisp/2010/03/11/duplicate-current-line-or-region-in-emacs.html
(defun duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
        (goto-char end)
        (newline)
        (insert region)
        (setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))
(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

;; delete from current to begining of word
(global-unset-key (kbd "M-S-d"))
(defun kill-word-reverse (&optional arg)
  (interactive "P")
  "Reverse function of kill-word"
  (if (equal arg nil)
      (kill-word -1)
    (if (equal arg -1)
	(kill-word nil)
      (kill-word (- arg)))))
(global-set-key (kbd "M-S-d") 'kill-word-reverse)

;; (global-unset-key (kbd "C-S-k"))
;; (defun kill-to-beginning-of-line (&optional arg)
;;   (interactive "P")
;;   "Kill from start of line to point. As a reverse method of kill-line"
;;   (if (equal arg nil)
;;       (kill-line 0)
;;     (if (equal arg 0)
;; 	(kill-line nil)
;;       (kill-line (- arg)))))
;; (global-set-key (kbd "C-S-k") 'kill-to-beginning-of-line)
(provide 'haidang-key-binding)
;;; haidang-key-binding.el ends here
