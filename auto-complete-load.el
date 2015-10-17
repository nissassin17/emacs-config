;; Time-stamp: <2012-08-16 03:09:19 haidang-ubuntu>

;; auto-complete
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/auto-complete/"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (expand-file-name "~/emacs-haidang/auto-complete/dict"))
(ac-config-default)

;; major dictionary
;; by default, aut-complete load $HOME/.dict file.
;; edit it for another choice

;; add c-dictionary in c mode
;; (defun  ac-add-c-dict()
;;   (add-to-list ac-sources ac-source-dictionary))
;; (add-hook 'c-mode-hook 'ac-add-c-dict)
;; (add-hook 'c-mode-common-hook 'ac-add-c-dict)

(setq ac-delay 0.2)

;; add trigger command
					;(add-to-list 'ac-trigger-key (kbd "TAB"))

;; key binding
;; (define-key ac-complete-mode-map "\M-n" 'ac-next)
;; (define-key ac-complete-mode-map "\M-p" 'ac-previous)

;; start auto-complete when number of typed characters larger than this
(setq ac-auto-start 3)			;defaul 2
;; time to show the menu
(setq ac-auto-show-menu 0.1)		;default 0.8
;; DWIM -- do what i mean.
(setq ac-dwim t)
;; enable ac in normal mode
(add-to-list 'ac-modes 'brandnew-mode)
;; ;; Just ignore case
;; (setq ac-ignore-case t)
;; ;; Ignore case if completion target string doesn't include upper characters
;; (setq ac-ignore-case 'smart)
;; ;; Distinguish case
;; (setq ac-ignore-case nil)
;; use fuzzy, ac misspell checker
(setq ac-use-fuzzy t)
(global-set-key "\M-n" 'ac-fuzzy-complete)
(setq ac-quick-help-delay 0.5)		;default 1.5 ;;==>>> this setting make errors when showing attached document with command too fast.
(setq ac-candidate-limit 100)

;; omnicomplete (default c-mode vim completion). Automatically read ac-cadidate in included files

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
			   (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

;;;;;;;;;;;;;;;;;;; end auto-complete base here

;; predictive complete
;; for lower computer
;;(global-pabbrev-mode 1)



;; autocomplete plus
;;(require 'auto-complete+)
;;(add-hook 'emacs-lisp-mode-hook (ac+-apply-source-elisp-faces))

;; (add-to-list 'load-path "~/emacs-haidang/completion-ui/")
;; (require 'completion-ui)
;; (auto-completion-mode 1)


;; predictive
;; (require 'predictive)
;; (autoload 'predictive-mode "predictive" "predictive" t)
;; (set-default 'predictive-auto-add-to-dict t)
;; (setq predictive-main-dict 'rpg-dictionary
;;       predictive-auto-learn t
;;       predictive-add-to-dict-ask nil
;;       predictive-use-auto-learn-cache nil
;;       predictive-which-dict t)

;; company autocompletion mode
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/auto-complete/company-mode/"))
(autoload 'company-mode "company" nil t)


;; use abbrev for all modes
(setq only-global-abbrevs t)

;; packages for minibuffer complete
(load (expand-file-name "~/emacs-haidang/auto-complete/auto-buff-complete.el"))

;; auto complete for slime
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/auto-complete/ac-slime"))
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))