;;; cedet.el --- cedet - some good plugins for developing emacs.
;;; in 23.2 version, it was intergrated into emacs. Here are setting only.

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debian>
;; Keywords: c

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

;; INSTALL
;; Load CEDET.

(setq load-path
      (remove (concat "/usr/share/emacs/" 
		      (substring emacs-version 0 -2) "/lisp/cedet")
	      load-path));; See cedet/common/cedet.info for configuration details.

;; (add-to-list 'load-path "/usr/share/emacs23/site-lisp/")
;; (add-to-list 'load-path "/usr/share/emacs23/site-lisp/speedbar")
;; (add-to-list 'load-path "/usr/share/emacs23/site-lisp/eieio/")
;; (add-to-list 'load-path "/usr/share/emacs23/site-lisp/ede/")
;; (add-to-list 'load-path "/usr/share/emacs23/site-lisp/cedet-common/")
;; (add-to-list 'load-path (expand-file-name "~/emacs-haidang/semantic/"))
;; (add-to-list 'load-path (expand-file-name "~/emacs-haidang/semantic/wisent/"))

;; set use mode
(global-ede-mode 1)
(semantic-mode 1)

;; lex-debuger
(setq semantic-lex-debug-analyzers t)

;; dump parse
(setq semantic-dump-parse t)
(setq semantic-dump-parser-warnings t)

;; submode
(global-semanticdb-minor-mode 1)
;; do some thing ==> make emacs (very) lower
(global-semantic-idle-scheduler-mode 0)
(setq semantic-idle-scheduler-verbose-flag nil) ;show what semantic-idle-scheduler is doing
;; show tag (variable, defun, ...)
(global-semantic-idle-summary-mode 1)
;; turn off
(global-semantic-idle-completions-mode 0)
(global-semantic-decoration-mode 1)
;; highlight current function
(global-semantic-highlight-func-mode 1)
					;(global-semantic-stickyfunc-mode 1)
(global-semantic-mru-bookmark-mode 1)

;; toggle to fullscreen and turn speedbar on
(add-hook 'after-init-hook (lambda ()
			     (toggle-fullscreen)))
;;(speedbar 1)

;; ecb -- emacs code browser
;; loading
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/ecb-2.40/"))

(require 'semantic/analyze)
(provide 'semantic-analyze)
(provide 'semantic-ctxt)
(provide 'semanticdb)
(provide 'semanticdb-find)
(provide 'semanticdb-mode)
(provide 'semantic-load)
(require 'ecb)
(require 'ecb-autoloads)

;; auto active
(setq ecb-auto-activate t) ;;(ecb-minor-mode 1)

;; inhibit upgraded notification buffer
(setq ecb-display-upgraded-options nil)

;; set width
;;(setq ecb-windows-width 0.2)
;;(ecb-redraw-layout)

;; set lib for autocompletion


(provide 'cedet-load)
;;; cedet.el ends here