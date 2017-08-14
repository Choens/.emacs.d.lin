;; #############################################################################
;; -- Andy's init.el file --
;;
;; Contents:
;; - Init
;;   - Debug
;;   - External Files
;; - Packages
;;   - Proxy Settings
;;   - Package Repos
;;   - Install Missing
;; - Links
;;   - Appearance
;;   - Edit
;;   - Backup
;;   - Mode Specific
;;   - Custom Lisp
;;   - Aliases
;;   - Keybindings
;;   - Session
;; #############################################################################



;; =============================================================================
;; -- Packages --
;; =============================================================================

;; -- Debug --
(setq debug-on-error t)

;; -- External Files --

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
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
;;(load "proxy.el" )

;; -- Package Repos --


;; -- Mode Specific --
(load "package-config.el")        ;; Needs to be first, otherwise alphabetical.
(load "comint-config.el" )
(load "dired-config.el" )
(load "eimp-config.el" )
(load "emmet-config.el" )
(load "epa-config.el" )
(load "ess-config.el" )
(load "ido-config.el" )
(load "flx-config.el" )
(load "magit-config.el" )
(load "markdown-config.el" )
(load "orgmode-config.el" )
;;(load "perl-config.el" )
(load "perspective-config.el" )
(load "polymode-config.el" )
(load "projectile-config.el" )
(load "python-config.el" )
(load "sql-config.el" )
(load "tabbar-config.el" )
(load "web-config.el" )
(load "yaml-config.el" )
(load "yasnippet-config.el" )
;;(load "eshell-config.el" )
;;(load "elpy-config.el" )
;;(load "speedbar-config.el" )

;; -- Key Bindings --
(load "key-bindings.el" )

;; -- Misc --
(load "misc.el" )

;;;; -- Session Start --
;;;;(server start)

;; -- Custom Settings --
