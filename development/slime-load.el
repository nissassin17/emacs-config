;;; slime.el --- slime mode setup

;; Copyright (C) 2012  haidang-ubuntu

;; Author: haidang-ubuntu <haidang-ubuntu@haidangubuntu-vaio>
;; Keywords: lisp

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


;; slime -- for lisp programmer
;; basic setup
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/slime/"))  ; your SLIME directory
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/slime/contrib"))
(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
;(require 'slime)
(require 'slime-autoloads)
(slime-setup)

;; compiler choosing
;; (setq slime-lisp-implementations
;;       '(((sbcl ("/usr/bin/sbcl") :coding-system utf-8-unix))
;; 	(clisp ("/usr/bin/clisp") :coding-system utf-8-nix)))



(provide 'slime)
;;; slime.el ends here
