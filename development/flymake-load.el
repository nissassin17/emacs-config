;; general
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/flymake/"))
(require 'flymake)
(add-hook 'find-file-hook 'flymake-find-file-hook)
;; disable GUI warning
(setq flymake-gui-warnings-enabled nil)
(add-to-list 'flymake-master-file-dirs (expand-file-name "~/"))
(add-to-list 'flymake-master-file-dirs "..")
(add-to-list 'flymake-master-file-dirs "../..")
(add-to-list 'flymake-master-file-dirs (expand-file-name "~/emacs-haidang/development/flymake/"))

;; javascript mode
(require 'flymake-jslint)
(add-hook 'javascript-mode-hook
	  (lambda () (flymake-mode t)))

;; for *nix shell programming (default: bash)
(require 'flymake-shell)
(add-hook 'sh-mode-hook 'flymake-shell-load)

;; for elisp
(load "flymake-elisp-init.el")
(add-to-list 'flymake-allowed-file-name-masks '("\\.el\\'" flymake-elisp-init))

;; java
(add-hook 'java-mode-hook 'flymake-mode-on)
(load "flymake-java.el")

;; html
(load "flymake-html.el")

;; shell
(load "flymake-shell.el")

;; c
(add-hook 'c-mode-common-hook 'flymake-mode-on)