;;; gccsense-load.el --- autocomplete for c, c++

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debian>
;; Keywords: c, convenience

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

(load (expand-file-name "~/emacs-haidang/development/gccsense.el"))

(require 'gccsense)
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (flymake-mode 1)
	    (gccsense-flymake-setup)))

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (local-set-key (kbd "C-c .") 'gccsense-complete)
	    ;; or
	    (local-set-key (kbd "M-p") 'ac-complete-gccsense)

	    (gccsense-flymake-init)))

(defcustom c-fields-expand-delay
  0.3
  "Delay time for try expanding c fields in second"
  :group 'gccsense)

(defcustom c-fields-expand-trigger-commands
  '(self-insert-command)
  "Trigger commands that specify whether 'c-fields-expand' should start or not."
  :type '(repeat symbol)
  :group 'gccsense)

(defcustom c-fields-expand-trigger-commands-on-completing
  '(delete-backward-char
    backward-delete-char
    backward-delete-char-untabify)
  "Trigger commands that specify whether `c-fields-expand` should start or not."
  :type '(repeat symbol)
  :group 'gccsense)

(defun c-fields-variable-expandable (command)
  "Return non-nil if `COMMAND` is a trigger command for `c-fields-expand"
  (and (memq command c-fields-expand-trigger-commands)
       (or (equal major-mode 'c-mode)
	   (equal major-mode 'c++-mode))))

(defun c-fields-expand (&optional force)
  "Expand available (compilable) c, c++ variable (class in general)'s fields. Require auto-complete+gccsense"
;  "Always check that c variable has expandable fields or not"
  (interactive)
  (if (or force (c-fields-variable-expandable last-command))
      (ac-complete-gccsense)))

;; set timer
;(run-with-idle-timer 0 c-fields-expand-delay 'c-fields-expand)


(provide 'gccsense-load)
;;; gccsense-load.el ends here
