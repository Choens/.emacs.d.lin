;; #############################################################################
;; -- Andy's init.el file --
;;
;; Contents:
;; - Init
;;   - Debug
;;   - External Files
;;   - Appearance
;;   - Edit
;;   - Proxy Settings
;;   - Lisp Packages
;;   - Misc (Custom Lisp)
;;   - Aliases
;;   - Session
;;   - Custom Settings (I ty to keep this cleaned up.)
;; #############################################################################

;; -- Debug --
;; Uncomment this if you are having problems.
;;(setq debug-on-error t)

;; -- External Files --
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/elpa")
;;(let ((default-directory "~/.emacs.d/elpa"))
;;  (normal-top-level-add-subdirs-to-load-path))

;; -- Appearance --
(load "appearance.el" )

;; -- Edit --
(load "edit.el" )

;; -- Proxy --
;; Only useful if you have to fight one of these.
;;(load "proxy.el" )

;; -- Lisp Packages --

;; List of all packages I install/want.
(load "package-config.el")

;; Package Config
;; Includes packages I install from RPM and elpa.
;; Listed in alphabetical order.
;; Packages not being used at the bottom.
(load "auctex-config.el")
(load "comint-config.el" )
(load "dired-config.el" )
(load "eimp-config.el" )
(load "emmet-config.el" )
(load "ein-config.el" )
(load "elpy-config.el" )
(load "epa-config.el" )
;;(load "eshell-config.el" )
(load "ess-config.el" )
(load "eval-in-repl-config.el")
;;(load "ido-config.el" )
;;(load "flx-config.el" )
;(load "flycheck-config.el" )
(load "ivy-config.el" )
(load "magit-config.el" )
(load "markdown-config.el" )
(load "orgmode-config.el" )
;;(load "perl-config.el" )
;;(load "perspective-config.el" )
(load "polymode-config.el" )
(load "projectile-config.el" )
;;(load "python-config.el" )
;;(load "speedbar-config.el" )
(load "sql-config.el" )
;;(load "tabbar-config.el" )
(load "web-config.el" )
(load "yaml-config.el" )
(load "yasnippet-config.el" )


;; -- Misc --
(load "misc.el" )

;; -- Session Start --
;;(server start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default)))
 '(package-selected-packages
   (quote
    (
     anaconda-mode
     counsel
     csv-mode
     ein
     elpy
     emmet-mode
     eval-in-repl
     flycheck
     flycheck
     magit
     markdown-mode
     material-theme
     org-gnome
     org-plus-contrib
     ox-reveal
     persp-projectile
     poly-R
     poly-markdown
     poly-noweb
     poly-org
     polymode
     py-autopep8
     solarized-theme
     swiper
     web-mode
     yaml-mode
     ))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
