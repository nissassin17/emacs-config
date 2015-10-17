;;; auto-buff-complete.el --- completion package for minibuffer

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

;; completing help mode
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/auto-complete/bmonkey/"))
(autoload 'completing-help-mode "completing-help"
  "Toggle a facility to display information on completions."
  t nil)
(autoload 'turn-on-completing-help-mode "completing-help"
  "Turn on a facility to display information on completions."
  t nil)
(autoload 'turn-off-completing-help-mode "completing-help"
  "Turn off a facility to display information of completions."
  t nil)
;; turn it on itermediately when starting emacs
(turn-on-completing-help-mode)


;; iman -- Call the viewers of man pages and GNU Info with completion.
(autoload 'iman "iman"
  "Call the viewers of man pages and GNU Info with completion."
  t nil)
(global-set-key "\C-cm" 'iman) ; `control c', then `m' calls `iman'

;; mcomplete-mode
(autoload 'mcomplete-mode "mcomplete"
  "Toggle minibuffer completion with prefix and substring matching."
  t nil)
(autoload 'turn-on-mcomplete-mode "mcomplete"
  "Turn on minibuffer completion with prefix and substring matching."
  t nil)
(autoload 'turn-off-mcomplete-mode "mcomplete"
  "Turn off minibuffer completion with prefix and substring matching."
  t nil)

;(setq mcomplete-default-method-set '(mcomplete-substr-method mcomplete-prefix-method))
;; turn on when start
(turn-on-mcomplete-mode)

;; icircles -- circle all complete candidates. Highlighting current choice ==> newbie only. fun
;; (add-to-list 'load-path (expand-file-name "~/emacs-haidang/icircles/icicles/"))
;; (require 'icicles)
;; ;; turn on when start
;; (icy-mode 1)


;; lighting complete and ultratex for LaTeX Editing
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/auto-complete/ultratex-0.80/lisp/"))
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/auto-complete/light-0.73/"))
(require 'light)
(require 'ultex-setup)




(provide 'auto-buff-complete)
;;; auto-buff-complete.el ends here
