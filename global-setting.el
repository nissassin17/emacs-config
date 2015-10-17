;;Time-stamp: <2012-08-11 12:42:24 haidang-ubuntu>

;; (add-to-list 'load-path "/etc/emacs23/site-start.d/")
(add-to-list 'load-path "~/emacs-haidang/")
;; (add-to-list 'load-path "/usr/share/emacs23/site-lisp/")
;;(add-to-list 'load-path "/usr/share/emacs23/site-lisp/semantic/")
;;(add-to-list 'load-path (expand-file-name "~/emacs-haidang/elib-1.0/"))

(setq scroll-step 1)
(setq hscroll-step 1)
(setq scroll-conservatively 99999)

(fset 'yes-or-no-p 'y-or-n-p)
(setq-default x-select-enable-clipboard t
	      indicate-empty-lines t
	      delete-by-moving-to-trash t
	      x-mouse-click-focus-ignore-position t
	      mouse-yank-at-point t
	      use-dialog-box nil)
(add-hook 'before-save-hook 'time-stamp)

;; (add-hook 'text-mode-hook
;; 	  '(lambda()
;; 	     (enriched-mode 1)))
;;  (add-hook 'after-change-major-mode-hook
;; 	  '(lambda()
;; 	     (if (equal major-mode 'fundamental-mode)
;; 		 (enriched-mode 1))))

;;(desktop-save-mode 1)

;;org-mode t
;;outline-mode t
;;desktop-save-mode t
;;(mode-require-final-newline nil)

(setq user-full-name "haidang001")
(setq user-mail-address "tranvansangk41@gmail.com")
(setq visible-bell t)