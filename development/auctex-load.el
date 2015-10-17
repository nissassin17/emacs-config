;;; auctex.el
;;
;; This can be used for starting up AUCTeX.  The following somewhat
;; strange trick causes tex-site.el to be loaded in a way that can be
;; safely undone using (unload-feature 'tex-site).
;;
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/auctex/"))
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/auctex/preview/"))
(add-to-list 'load-path (expand-file-name "~/emacs-haidang/development/auctex/style/"))
(load (expand-file-name "~/emacs-haidang/development/auctex/auctex.el") nil t t)
(load (expand-file-name "~/emacs-haidang/development/auctex/preview/preview-latex.el") nil t t)