;; (setq load-path
;;       (remove (concat "/usr/share/emacs/" 
;; 		      (substring emacs-version 0 -2) "/lisp/cedet")
;; 	      load-path));; See cedet/common/cedet.info for configuration details.
;; set use mode


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ecb -- emacs code browser
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/ecb/"))
;;(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/ecb/semantic-ecb/"))

;; (require 'semantic/analyze)
;; (provide 'semantic-analyze)
;; (provide 'semantic-ctxt)
;; (provide 'semanticdb)
;; (provide 'semanticdb-find)
;; (provide 'semanticdb-mode)
;; (provide 'semantic-load)
(require 'ecb)
(require 'ecb-autoloads)

;; auto active
(setq ecb-auto-activate t) ;;(ecb-minor-mode 1)

;; inhibit upgraded notification buffer
(setq ecb-display-upgraded-options nil)

;; set width
(setq ecb-windows-height 0.16)
(ecb-redraw-layout)

;; set lib for autocompletion

(setq ecb-tip-of-the-day nil)
(setq ecb-layout-name "top1")
(ecb-redraw-layout)
;;(add-hook 'ecb-redraw-layout-before-hook (lambda()
;;					   (setq ecb-layout-name "top1")))


(provide 'cedet-load)
;;; cedet.el ends here