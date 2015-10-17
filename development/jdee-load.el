;; This .emacs file illustrates the minimul setup

;; Set the debug option to enable a backtrace when a
;; problem occurs.
(setq debug-on-error t)

;; Update the Emacs load-path to include the path to
;; the JDE and its require packages. This code assumes
;; that you have installed the packages in the emacs/site
;; subdirectory of your home directory.
(add-to-list 'load-path (expand-file-name (expand-file-name "~/emacs-haidang/development/jdee/lisp/")))
;; required to run the JDE.
(require 'jde)

;; If you want Emacs to defer loading the JDE until you open a 
;; Java file, edit the following line
(setq defer-loading-jde nil)
;; to read:
;;
;;  (setq defer-loading-jde t)
;;

(if defer-loading-jde
    (progn
      (autoload 'jde-mode "jde" "JDE mode." t)
      (setq auto-mode-alist
	    (append
	     '(("\\.java\\'" . jde-mode))
	     auto-mode-alist)))
  (require 'jde))


;; Sets the basic indentation for Java source files
;; to two spaces.
(defun my-jde-mode-hook ()
  (setq c-basic-offset 2))

(add-hook 'jde-mode-hook 'my-jde-mode-hook)

;; Include the following only if you want to run
;; bash as your shell.

;; Setup Emacs to run bash as its primary shell.
(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))
(if (boundp 'w32-quote-process-args)
    (setq w32-quote-process-args ?\")) ;; Include only for MS Windows.


;; my own setting
(setq jde-read-compile-args t)
(setq jde-complete-signature-display-time 0.5)

(jde-set-global-classpath "/usr/lib/jvm/java-7-openjdk-amd64/jre/lib")
;;The easiest way to compile the files is to use the JDEE command jde-compile-jde.
;;(jde-compilte-jde)

(setq jde-enable-abbrev-mode t)
(jde-run-set-args "-cp .")