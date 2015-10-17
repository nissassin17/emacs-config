;; Copyright (c) haidang001 (tm) (@yahoo.com)
;; S_have fun! :)
;; Mark point: 1-0.
;; Time-stamp: <2012-08-15 14:26:08 haidang-ubuntu>

;;; haidang-config.el --- Full emacs configuration

;; Copyright (C) 2012  haidang001\haidang001-vaio

;; Author: haidang001\haidang001-vaio <haidang-debian@debian>
;; Keywords: c, abbrev, convenience, frames, languages, oop, outlines, processes, terminals, tex, tools, unix, wp

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

;; This is the overall Emacs (version 23)'s configuration's header. It includes many file in "emacs-haidang" directory.
;; Don't forget it if you want to use my config.
;; S_have fun! :)

;;; Code:

;; neccessary for other setting
(add-to-list 'load-path (expand-file-name "$HOME/emacs-haidang"))

;; general setting
(load (expand-file-name "$HOME/emacs-haidang/global-setting.el"))

;; some useful modes and binding key for development
(load (expand-file-name "$HOME/emacs-haidang/development.el"))

;; auto-complete plugin and setting
(load (expand-file-name "$HOME/emacs-haidang/auto-complete-load.el"))

;; editting
(load (expand-file-name "$HOME/emacs-haidang/editting.el"))

;; display's properties (including font's size setting)
(load (expand-file-name "$HOME/emacs-haidang/display.el"))

;; web browser
(load (expand-file-name "$HOME/emacs-haidang/web.el"))

(provide 'haidang-config)
;; haidang-config.el ends here