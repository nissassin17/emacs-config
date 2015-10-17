;;; Time-stamp: <2012-04-18 22:38:27 haidang-debian>

;;; iswitchb-load.el --- faster switching

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

(require 'iswitchb)
(iswitchb-mode 1)

(add-to-list 'iswitchb-buffer-ignore "^ ")
(add-to-list 'iswitchb-buffer-ignore "^\\*Messages\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*scratch\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*ECB$")
(add-to-list 'iswitchb-buffer-ignore "^\\*ESS\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*ftp$")
(add-to-list 'iswitchb-buffer-ignore "^[tT][aA][gG][sS]$")
(add-to-list 'iswitchb-buffer-ignore "^\\*bsh$")
(add-to-list 'iswitchb-buffer-ignore "^jde-log$")
(add-to-list 'iswitchb-buffer-ignore "^\\*Completions$")
(add-to-list 'iswitchb-buffer-ignore "^\\*GNU Emacs\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*WoMan-Log\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*Possible Completions\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*compilation\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*Completions\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*Apropos\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*Help\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*Disabled Command\\*$")
(add-to-list 'iswitchb-buffer-ignore "^\\*Compile-Log\\*$")

;; always use regexp buffer searching
(setq iswitchb-regexp t)


;;; iswitchb-load.el ends here
