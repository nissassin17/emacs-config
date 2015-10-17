;; Time-stamp: <2012-05-16 22:19:44 haidang>

(load (expand-file-name "~/emacs-haidang/editting/ibus.el"))
(require 'ibus)

;;(default-input-method "vietnamese-telex")
;;(keyboard-coding-system (quote utf-8))

;; (add-hook 'after-init-hook 'ibus-mode-on)
(global-set-key "\C-\M-z" 'ibus-mode-on)
(global-set-key "\C-\M-x" 'ibus-mode-off)
(global-set-key "\C-\M-c" 'ibus-toggle)