;;; my-macro.el --- haidang's macro, most for higher editing speed

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debian>
;; Keywords: c, docs

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

;;; Code:



;; Simple print out ->. Bound to C-:
(fset 'c-structure-dereference
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("->" 0 "%d")) arg)))
(global-set-key (kbd "C-:") 'c-structure-dereference)

;; Run last typed text - program in minibuffer
(fset 'run-last-program-other-window
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([24 52 98 return 134217848 99 111 109 105 110 116 45 114 117 110 return 134217840 return] 0 "%d")) arg)))
(global-set-key (kbd "C-.") 'run-last-program-other-window)

;; New defun with two braces and comment its name after. For ex in C:
;; void new_defun(void){
;; <indented> cursor here
;; }
;; Bound to C-S-j
(fset 'c-new-defun
      (lambda (&optional arg) "New defun with two braces and comment its name after. For ex in C:
void new_defun(void){
<indented> //<<==cursor here
}
Bind to C-S-j" (interactive "p") (kmacro-exec-ring-item (quote ([123 return 125 1 15 tab] 0 "%d")) arg)))
(global-unset-key (kbd "C-S-j"))
(global-set-key (kbd "C-S-j") 'c-new-defun)

;; Add c's program into 'makefile' for make.
(fset 'add-c-file-to-make
      (lambda (&optional arg) "Add c's program into 'makefile' for make." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 109 97 107 101 102 105 108 101 return 19 101 120 101 61 5 32 25 19 108 105 110 107 58 5 10 25 58 32 25 46 99 10 tab 36 40 67 67 41 32 25 46 99 32 45 111 32 25 32 36 40 67 70 76 65 71 83 41 24 19 24 107 return] 0 "%d")) arg)))


;; siminlar to add-c-file-to-make, instead it used for cpp
(fset 'add-cpp-file-to-make
      (lambda (&optional arg) "siminlar to add-c-file-to-make, instead it used for cpp." (interactive "p") (kmacro-exec-ring-item (quote ([24 6 109 97 107 101 102 105 108 101 return 19 97 108 108 61 16 5 32 25 19 108 105 110 107 58 5 10 25 58 32 25 46 99 112 112 10 tab 36 40 67 80 80 41 32 25 46 99 112 112 32 45 111 32 25 32 36 40 67 80 80 70 76 65 71 83 41 24 19] 0 "%d")) arg)))

;; C-o to open new line before and tab to indent it. Bind to C-M-o
(global-unset-key (kbd "C-M-o"))
(fset 'new-indent-line-before
      (lambda (&optional arg)
	"C-o to open new line before and tab to indent it. Bind to C-M-o (overrite spilit-line)"
	(interactive "p")
	(kmacro-exec-ring-item (quote ([1 15 tab] 0 "%d")) arg)))
(global-set-key (kbd "C-M-o") 'new-indent-line-before)



(provide 'my-macro)
;;; my-macro.el ends here
