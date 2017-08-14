;; #############################################################################
;; -- appearance --
;;
;; Contents:
;; - Theme
;; - Font
;; - Menu-bar
;; - Toolbar
;; - Splash Screen
;; - Initial Scratch Message
;; - Buffer Settings
;; #############################################################################



;; -- Theme --
;; M-x customize-themes
;;(load-theme 'adwaita t)
;;(load-theme 'ir-black t)
;;(load-theme 'leuven t)
(load-theme 'material t)
;(load-theme 'solarized-dark t)
;(load-theme 'solarized-light t)
;(load-theme 'spacegray t)
;(load-theme 'tango-dark t)

;; -- Font --
(add-to-list 'default-frame-alist '(font . "Source Code Pro"))
(set-face-attribute 'default t :font "Source Code Pro")
(ansi-color-for-comint-mode-on)

;; -- Menu-bar  --
(menu-bar-mode 1) ; 1 = On, 0 = Off

;; -- Toolbar --
(tool-bar-mode 1) ; 1 = On, 0 = Off

;; -- Splash Screen --
(setq inhibit-splash-screen t)

;; -- Initial Scratch Message --
(setq initial-scratch-message
      ;;"To err is human... to really foul up requires the root password.\n\n")
      "Nullius in verba.\n\n")

;; -- Buffer Settings --
(global-hl-line-mode t)
(iimage-mode)							; Enable Inline Images
(set-default 'cursor-type 'bar)         ; Use Bar Cursor
(set-scroll-bar-mode t)                 ; Scrollbar
(setq column-number-mode t)             ; Col # in mode bar
(setq blink-cursor-mode nil)
(setq visible-bell t)                   ; Enable visual bell
(setq truncate-lines t)                 ; Truncate lines by default
(setq display-time-mode 1)
(setq display-time-day-and-date t)      ; Display time & date in mo
(show-paren-mode t)                     ; Show Parenthesis
