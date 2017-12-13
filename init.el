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
(load "ess-config.el" )
(load "ido-config.el" )
(load "flx-config.el" )
(load "magit-config.el" )
(load "markdown-config.el" )
(load "orgmode-config.el" )
(load "perspective-config.el" )
(load "polymode-config.el" )
(load "projectile-config.el" )
(load "sql-config.el" )
(load "tabbar-config.el" )
(load "web-config.el" )
(load "yaml-config.el" )
(load "yasnippet-config.el" )
;;(load "python-config.el" )
;;(load "perl-config.el" )
;;(load "eshell-config.el" )
;;(load "speedbar-config.el" )

;; -- Misc --
(load "misc.el" )

;; -- Session Start --
;;(server start)

;; -- Custom Settings --
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (csv-mode ein elpy emmet-mode ess-R-data-view flycheck fo hyde ir-black-theme magit-filenotify markdown-mode material-theme org-gnome org-plus-contrib ox-pandoc ox-reveal p-mode persp-projectile polymode py-autopep8 solarized-theme spacegray-theme web-mode yaml-mode yasnippet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
