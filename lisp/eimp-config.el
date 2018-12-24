;; eimp-config.el - Emacs IMage Package
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/eimp.el

(use-package eimp
             :ensure t
             :init
             (autoload 'eimp-mode "eimp" "Emacs Image Manipulation Package." t)
             (add-hook 'image-mode-hook 'eimp-mode))
