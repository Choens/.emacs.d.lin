;; magit.el - Magical Git Interface for Emacs
;;
;; Reference:
;; - https://magit.vc/

(use-package magit
    :ensure t
    :bind (("C-x C-g s" . magit-status)
           ("C-x M-g" . magit-dispatch-popup))
    :config
    ;;(require 'magit)
    (setq magit-last-seen-setup-instructions "1.4.0"))
