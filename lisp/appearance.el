;; #############################################################################
;; -- appearance --
;;
;; Settings which affect how Emacs looks.
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
;; Manual Instructions: M-x customize-themes
;(load-theme 'adwaita t)
;(load-theme 'ir-black t)
;(load-theme 'leuven t)
(load-theme 'material t)
;(load-theme 'material-light t)
;(load-theme 'solarized-dark t)
;(load-theme 'solarized-light t)
;(load-theme 'tango-dark t)

;; -- Font --
;; I really like this font.
(add-to-list 'default-frame-alist '(font . "Source Code Pro"))
(set-face-attribute 'default t :font "Source Code Pro")
(ansi-color-for-comint-mode-on)

;; -- Menu-bar  --
(menu-bar-mode 1) ; 1 = On, 0 = Off

;; -- Toolbar --
(tool-bar-mode 1) ; 1 = On, 0 = Off

;; -- Splash Screen --
;; Silly to have a splash screen on a text editor!
(setq inhibit-splash-screen t)

;; -- Initial Scratch Message --
;; I just had to.
(setq initial-scratch-message
      ;;"\n\nTo err is human... to really foul up requires the root password.\n\n")
      "\n\nNullius in verba\n\n")

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
