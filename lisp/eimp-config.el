;; eimp-config.el - Emacs IMage Package
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/eimp.el

(autoload 'eimp-mode "eimp" "Emacs Image Manipulation Package." t)
(add-hook 'image-mode-hook 'eimp-mode)
