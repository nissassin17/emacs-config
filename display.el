Content-Type: text/enriched
Text-Width: 70

;;; <x-color><param>Firebrick</param>Time-stamp: <<2012-08-11 06:21:24 haidang-ubuntu>
</x-color>
;;; <x-color><param>Firebrick</param>display.el --- customize the apperance
</x-color>
;; <x-color><param>Firebrick</param>Copyright (C) 2012  haidang001\haidang001-vaio
</x-color>
;; <x-color><param>Firebrick</param>Author: haidang001\haidang001-vaio <<haidang-debian@debi
</x-color>
;; <x-color><param>Firebrick</param>This program is free software; you can redistribute it and/or modify
</x-color>;; <x-color><param>Firebrick</param>it under the terms of the GNU General Public License as published by
</x-color>;; <x-color><param>Firebrick</param>the Free Software Foundation, either version 3 of the License, or
</x-color>;; <x-color><param>Firebrick</param>(at your option) any later version.
</x-color>
;; <x-color><param>Firebrick</param>This program is distributed in the hope that it will be useful,
</x-color>;; <x-color><param>Firebrick</param>but WITHOUT ANY WARRANTY; without even the implied warranty of
</x-color>;; <x-color><param>Firebrick</param>MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
</x-color>;; <x-color><param>Firebrick</param>GNU General Public License for more details.
</x-color>
;; <x-color><param>Firebrick</param>You should have received a copy of the GNU General Public License
</x-color>;; <x-color><param>Firebrick</param>along with this program.  If not, see <<http://www.gnu.org/licenses/>.
</x-color>
;;; <x-color><param>Firebrick</param>Commentary:
</x-color>
;;<x-color><param>Firebrick</param>
</x-color>
;;; <x-color><param>Firebrick</param>Code:

</x-color>

(add-to-list 'load-path (expand-file-name <x-color><param>VioletRed4</param>"~/emacs-haidang/display"</x-color>))

(setq-default cursor-type 'bar
	      display-time-day-and-date t
	      display-time-24hr-format t)
;; <x-color><param>Firebrick</param>(show-trailing-whitespace t)

</x-color>(blink-cursor-mode 1)

;; <x-color><param>Firebrick</param>show line and column
</x-color>(line-number-mode 1)
(column-number-mode 1)

;; <x-color><param>Firebrick</param>display time
</x-color>;;<x-color><param>Firebrick</param>(display-time-mode 1)

</x-color>;; <x-color><param>Firebrick</param>show matched parent
</x-color>(show-paren-mode 1)
(size-indication-mode 1)

;; <x-color><param>Firebrick</param>hilight current line
</x-color>(global-hl-line-mode 1)


;; <x-color><param>Firebrick</param>change theme

</x-color>;;<x-color><param>Firebrick</param>(require 'color-theme)

</x-color>;;<x-color><param>Firebrick</param>(color-theme-initialize)

</x-color>;;<x-color><param>Firebrick</param>(color-theme-dark-laptop)

</x-color>

;; <x-color><param>Firebrick</param>show tab and group buffers

</x-color>;;<x-color><param>Firebrick</param>(tabbar-mode 1)

</x-color>

;; <x-color><param>Firebrick</param>show pretty form feed (C-l)

</x-color>(<x-color><param>Purple</param>require</x-color> '<x-color><param>dark cyan</param>pp-c-l</x-color>)

(pretty-control-l-mode 1)


;; <x-color><param>Firebrick</param>change font size

</x-color>;; <x-color><param>Firebrick</param>(set-face-attribute 'default nil :height 75)

</x-color>


;; <x-color><param>Firebrick</param>more visible text
</x-color>(load (expand-file-name <x-color><param>VioletRed4</param>"~/emacs-haidang/display/maxframe.el"</x-color>) nil t t)


;; <x-color><param>Firebrick</param>some shortcuts for fast multi-windows' switching
</x-color>(load (expand-file-name <x-color><param>VioletRed4</param>"~/emacs-haidang/multiply-windows.el"</x-color>))


;; <x-color><param>Firebrick</param>good switcher
</x-color>(load (expand-file-name <x-color><param>VioletRed4</param>"~/emacs-haidang/display/iswitchb-load.el"</x-color>))

;;; <x-color><param>Firebrick</param>display.el ends here
</x-color>