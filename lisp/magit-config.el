;; magit.el - Magical Git Interface for Emacs
;;
;; Reference:
;; - https://magit.vc/

(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(setq magit-last-seen-setup-instructions "1.4.0")
