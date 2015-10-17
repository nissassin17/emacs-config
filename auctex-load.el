;;; auctex.el
;;
;; This can be used for starting up AUCTeX.  The following somewhat
;; strange trick causes tex-site.el to be loaded in a way that can be
;; safely undone using (unload-feature 'tex-site).
;;
(add-to-list 'load-path "/home/haidang-ubuntu/emacs-haidang/auctex/")
(add-to-list 'load-path "/home/haidang-ubuntu/emacs-haidang/auctex/preview/")
(add-to-list 'load-path "/home/haidang-ubuntu/emacs-haidang/auctex/style/")
(load "/home/haidang-ubuntu/emacs-haidang/auctex/auctex.el" nil t t)
(load "/home/haidang-ubuntu/emacs-haidang/auctex/preview/preview-latex.el" nil t t)