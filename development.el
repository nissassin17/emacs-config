(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development"))

;; many plugins in one with haidang's setting. This config collision with flymake-elisp-init in flymake.
;; It must be loaded before flymake-init loader.
(load (expand-file-name "~/emacs-haidang/development/cedet-load.el"))

(global-set-key (kbd "C->") 'comint-run)
(global-set-key (kbd "C-;") 'eshell)

(global-set-key (kbd "C-<") 'compile)  ;them vao .emacs
(global-set-key (kbd "C-,") 'recompile)

(setq-default comment-multi-line t)

(which-function-mode t)

(add-hook 'c-mode-common-hook
 	  '(lambda (&optional arg)
 	     "Turn hs-minor-mode on"
 	     (hs-minor-mode 1)))

(add-hook 'lisp-mode-hook
	  '(lambda (&optional arg)
	     "Turn hs-minor-mode on"
	     (hs-minor-mode 1)))

(add-hook 'java-mode-hook
	  '(lambda (&optional arg)
	     "Turn hs-minor-mode on"
	     (hs-minor-mode 1)))

(add-hook 'js2-mode-hook
	  '(lambda (&optional arg)
	     "Turn hs-minor-mode on"
	     (hs-minor-mode 1)))

;; jump to first error.
(setq-default compilation-auto-jump-to-first-error t)

;; gccsense -- autocomplete for c, c++
;;(load (expand-file-name "~/emacs-haidang/development/gccsense-load.el"))

;; all java here
(load (expand-file-name "~/emacs-haidang/development/java-load.el"))

;; slime mode
(load (expand-file-name "~/emacs-haidang/development/slime-load.el"))

;; for LaTeX
;;(load (expand-file-name "~/emacs-haidang/development/auctex-load.el"))

;; ecb -- emacs code browser
(load (expand-file-name "~/emacs-haidang/development/ecb-load.el"))

;; immediately compilational error checking.
;; Collision with (global-ede-mode 1) command if loading before it.
;;(load (expand-file-name "~/emacs-haidang/development/flymake-load.el"))

(c-toggle-hungry-state 1)