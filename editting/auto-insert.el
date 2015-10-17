;; Time-stamp: <2012-05-16 22:19:24 haidang>

(auto-insert-mode 1)

(add-to-list 'auto-insert-alist
	     '(("[Mm]akefile\\'" . "Makefile")
	       .
	       (expand-file-name "~/Development/template/makefile")))

(add-to-list 'auto-insert-alist
	     '(("^GNUmakefile$" . "Makefile")
	       .
	       (expand-file-name "~/Development/template/makefile")))

(add-to-list 'auto-insert-alist
	     '(("\\.c\\'" . "C-ANSI")
	       .
	       (expand-file-name "~/Development/template/main.c")))

(add-to-list 'auto-insert-alist
	     '(("\\.cpp\\'" . "C++")
	       .
	       (expand-file-name "~/Development/template/main.cpp")))