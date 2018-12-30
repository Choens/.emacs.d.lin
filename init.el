;; init.el - Andy's Emacs init file
;;
;; Contents:
;; - Debug
;; - Proxy Settings
;; - Use Package
;; - External Files
;; - Emacs Config
;; - Package Config
;; - Aliases
;; - Session
;; - Custom Set Variables

;; ---- Debug ----
;; Uncomment this if you are having problems.
;;(setq debug-on-error t)



;; -- Proxy --
;; Only useful if you have to fight one of these.
;;(load "proxy.el" )



;; ---- Use Package ----
;; Sets up the use-package magic.
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))



;; ---- External Files ----
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/elpa")



;; ---- Emacs Config ----
;; Each file controls an aspect of Emacs setup.
;; These settings are _not_ package specific.
(load "appearance.el" )
(load "edit.el" )
(load "misc.el" )



;; -- Package Config --

;; List of all packages I install/want.
;;(load "package-config.el")

;; Config for all Emacs package, regardless of installation source (Fefora/(m)elpa).
;; Listed in alphabetical order.
(load "auctex-config.el")
(load "comint-config.el" )
(load "csv-config.el" )
(load "dired-config.el" )
(load "eimp-config.el" )
;(load "emmet-config.el" )
(load "ein-config.el" )
(load "elpy-config.el" )
(load "epa-config.el" )
;;(load "eshell-config.el" )
(load "ess-config.el" )
;;(load "flycheck-config.el" )
(load "json-config.el" )
(load "ivy-config.el" )
(load "magit-config.el" )
(load "markdown-config.el" )
(load "orgmode-config.el" )
;;(load "perspective-config.el" )
(load "polymode-config.el" )
(load "projectile-config.el" )
(load "sql-config.el" )
(load "web-config.el" )
(load "yaml-config.el" )
;;(load "yasnippet-config.el" )



;; ---- Custom Set Variables ----
;; I try to keep this minimal, but stuff always sneaks in.
;;(server start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default)))
 '(package-selected-packages
   (quote
    (ob-ipython yaml-mode web-mode use-package solarized-theme request-deferred py-autopep8 poly-org poly-R persp-projectile ox-reveal org-plus-contrib org-gnome material-theme magit julia-mode flycheck eval-in-repl emmet-mode elpy ein eimp csv-mode counsel auctex anaconda-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
