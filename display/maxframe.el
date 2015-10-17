;;; Time-stamp: <2012-08-16 03:50:02 haidang-ubuntu>

;;; maxframe.el --- maximize the sight.

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debi

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

;;(require 'maxframe)
;;(add-hook 'window-setup-hook 'maximize-frame)

(menu-bar-mode t)
(tool-bar-mode nil)
(set-scroll-bar-mode nil)
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			   (progn (setq old-fullscreen current-value)
				  'fullboth)))))

(add-hook 'after-init-hook 'toggle-fullscreen)
(global-set-key (kbd "M-RET") 'toggle-fullscreen)

;;; maxframe.el ends here
