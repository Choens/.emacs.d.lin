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
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#f4eedb" "#cc1f24" "#778c00" "#a67c00" "#007ec4" "#c42475" "#11948b" "#88999b"])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#11948b")
 '(cua-normal-cursor-color "#596e76")
 '(cua-overwrite-cursor-color "#a67c00")
 '(cua-read-only-cursor-color "#778c00")
 '(custom-safe-themes
   '("c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "afd761c9b0f52ac19764b99d7a4d871fc329f7392dfc6cd29710e8209c691477" default))
 '(fci-rule-color "#f4eedb")
 '(highlight-changes-colors '("#c42475" "#5e65b6"))
 '(highlight-symbol-colors
   '("#ed7ddb24b29e" "#cd82e29fd17c" "#fc9acadfb443" "#d974d4beddd6" "#df07dfc6b349" "#f76ccd6eaf2a" "#d132db91e15a"))
 '(highlight-symbol-foreground-color "#5d737a")
 '(highlight-tail-colors
   '(("#f4eedb" . 0)
     ("#a8b84b" . 20)
     ("#66c1b3" . 30)
     ("#6fa5e7" . 50)
     ("#d6a549" . 60)
     ("#ed6e3e" . 70)
     ("#f46495" . 85)
     ("#f4eedb" . 100)))
 '(hl-bg-colors
   '("#d6a549" "#ed6e3e" "#ff6243" "#f46495" "#837bdf" "#6fa5e7" "#66c1b3" "#a8b84b"))
 '(hl-fg-colors
   '("#fffce9" "#fffce9" "#fffce9" "#fffce9" "#fffce9" "#fffce9" "#fffce9" "#fffce9"))
 '(hl-paren-colors '("#11948b" "#a67c00" "#007ec4" "#5e65b6" "#778c00"))
 '(hl-sexp-background-color "#efebe9")
 '(lsp-ui-doc-border "#5d737a")
 '(nrepl-message-colors
   '("#cc1f24" "#bb3e06" "#a67c00" "#4f6600" "#a8b84b" "#005797" "#11948b" "#c42475" "#5e65b6"))
 '(package-selected-packages
   '(ess yaml-mode web-mode use-package solarized-theme request-deferred python-x py-autopep8 poly-org poly-R pip-requirements persp-projectile ox-reveal org-plus-contrib ob-ipython material-theme magit leuven-theme jupyter ipython-shell-send ghub flycheck eval-in-repl emmet-mode elpy ein csv-mode counsel auctex anaconda-mode))
 '(pos-tip-background-color "#f4eedb")
 '(pos-tip-foreground-color "#5d737a")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#778c00" "#f4eedb" 0.2))
 '(term-default-bg-color "#fffce9")
 '(term-default-fg-color "#596e76")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#cc1f24")
     (40 . "#bbbc5a0718b8")
     (60 . "#b1ce6c680f6e")
     (80 . "#a67c00")
     (100 . "#980682770000")
     (120 . "#905f85330000")
     (140 . "#887187c90000")
     (160 . "#802a8a3b0000")
     (180 . "#778c00")
     (200 . "#69798ef83f8d")
     (220 . "#5f5f904353a2")
     (240 . "#51b991a0669e")
     (260 . "#3d7893107927")
     (280 . "#11948b")
     (300 . "#1b098bd9a288")
     (320 . "#1963876fadf3")
     (340 . "#129882fbb95b")
     (360 . "#007ec4")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#fffce9" "#f4eedb" "#990001" "#cc1f24" "#4f6600" "#778c00" "#785700" "#a67c00" "#005797" "#007ec4" "#93004d" "#c42475" "#006d68" "#11948b" "#596e76" "#88999b"))
 '(xterm-color-names
   ["#f4eedb" "#cc1f24" "#778c00" "#a67c00" "#007ec4" "#c42475" "#11948b" "#002b37"])
 '(xterm-color-names-bright
   ["#fffce9" "#bb3e06" "#98a6a6" "#88999b" "#596e76" "#5e65b6" "#5d737a" "#00212b"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
