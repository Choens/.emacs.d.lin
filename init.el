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
(load "ido-config.el" )
(load "flx-config.el" )
;(load "flycheck-config.el" )
(load "magit-config.el" )
(load "markdown-config.el" )
(load "orgmode-config.el" )
;;(load "perl-config.el" )
;;(load "perspective-config.el" )
(load "polymode-config.el" )
(load "projectile-config.el" )
(load "sql-config.el" )
;;(load "tabbar-config.el" )
(load "web-config.el" )
(load "yaml-config.el" )
(load "yasnippet-config.el" )
(load "python-config.el" )
;;(load "speedbar-config.el" )

;; -- Misc --
(load "misc.el" )

;; -- Session Start --
;;(server start)
