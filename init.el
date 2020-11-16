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
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)




;; ---- External Files ----
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/elpa")



;; ---- Emacs Config ----
;; Each file controls an aspect of Emacs setup.
;; These settings are _not_ package specific.
(load "appearance.el" )
(load "edit.el" )
(load "misc.el" )



;; Config for all Emacs package, regardless of installation source (Fefora/(m)elpa).
;; Listed in alphabetical order.
;; TODO: Fix this.
;;(load "auctex-config.el")
(load "comint-config.el")
(load "company-config.el")
(load "csv-config.el")
(load "dired-config.el")
;;(load "ein-config.el")
(load "elpy-config.el")
(load "epa-config.el")
;;(load "eshell-config.el")
(load "ess-config.el")
;;(load "eval-in-repl-config.el")
;;(load "flycheck-config.el")
;;(load "json-config.el")
(load "ivy-config.el")
(load "magit-config.el")
(load "markdown-config.el")
(load "orgmode-config.el")
;;(load "perspective-config.el")
(load "polymode-config.el")
(load "projectile-config.el")
;;(load "python-config.el")
(load "sql-config.el")
;;(load "test-config.el")
(load "web-config.el")
(load "yaml-config.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ess yaml-mode web-mode use-package solarized-theme request-deferred python-x py-autopep8 poly-org poly-R pip-requirements persp-projectile ox-reveal org-plus-contrib ob-ipython material-theme magit leuven-theme jupyter ipython-shell-send ghub flycheck eval-in-repl emmet-mode elpy ein csv-mode counsel auctex anaconda-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
