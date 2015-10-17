;;; flymake-java.el --- flymake for java

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debian>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(defun my-java-flymake-init ()
  (list "javac" (list (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-with-folder-structure))))
(add-to-list 'flymake-allowed-file-name-masks '("\\.java$" my-java-flymake-init flymake-simple-cleanup))


;; Java syntax checking with Make

;; This is the command that stock flymake.el runs on a Java source file:

;; make -s -C ~/src/java/hello/ CHK_SOURCES=/tmp/../hello.java SYNTAX_CHECK_MODE=1 check-syntax
;; To get this to work, add this stanza to your Makefile:

;; .PHONY: check-syntax

;; check-syntax:
;; 	javac -Xlint $(CHK_SOURCES)
;; I also add the following. Typing “make test-fast” will compile and run the most recently modified Java program:

;; RECENT_JAVA := $(shell ls -1t *.java | head -1)

;; test-fast: $(basename $(RECENT_JAVA)).run

;; %.run:	%.class
;; 	java $(basename $<)
;; %.class:	%.java
;; 	javac $<
;; To make sure Flymake is working correctly, and to tune your experience, try adding these lines to your ~/.emacs.d/init.el file:

;; (when (require 'flymake)
;;   (set-variable 'flymake-log-level 9)
;;   (setq flymake-start-syntax-check-on-newline nil)
;;   (setq flymake-no-changes-timeout 10)
;;   (add-hook 'java-mode-hook 'flymake-mode-on))


(provide 'flymake-java)
;;; flymake-java.el ends here
