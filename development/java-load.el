;;; java-mode.el --- all supported plugin will be here

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debian>
;; Keywords: extensions

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

;; js2-mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; yasnippet
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/snippet/"))
(require 'yasnippet)
(setq yas/root-directory (expand-file-name "~/emacs-haidang/development/snippet/"))
(yas/load-directory yas/root-directory)

;; use dropdown-list.el
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt
			     yas/ido-prompt
			     yas/completing-prompt))

(add-hook 'java-mode-hook '(lambda ()
			     (yas/global-mode 1)))


;; ajc plugin
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/ajc-java/"))
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/auto-complete/"))
(require 'ajc-java-complete)
(require 'ajc-java-complete-config)
(add-hook 'java-mode-hook 'ajc-java-complete-mode)
(add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)
;;     read ajc-java-complete-config.el  for more info .

;; jsp support
(add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)
(add-hook 'jsp-mode 'ajc-java-complete-mode)


;; andersl java font lock
;; edit here : 2015 / 10 / 17
;;(load (expand-file-name "~/emacs-haidang/development/andersl-java-font-lock.el"))
;;(add-hook 'java-mode-hook 'my-java-mode-hook)

(defun my-java-mode-hook ()
  (cond (window-system
	 (require 'andersl-java-font-lock)
	 (turn-on-font-lock))))

(setq font-lock-maximum-decoration t)

(load (expand-file-name "~/emacs-haidang/development/jdee-load.el"))

(provide 'java-load)
;;; java-load.el ends here
