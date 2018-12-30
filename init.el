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



;; ######## END init.el  ########

