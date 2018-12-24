;; emmet-config.el - Zen coding
;;
;; Reference:
;; - https://github.com/smihica/emmet-mode

(use package emmet-mode
     :ensure t
     :mode("\\.html\\" . html-mode)
     :init
     (require 'emmet-mode)
     :config
     (add-hook 'sgml-mode-hook 'emmet-mode)
     (add-hook 'html-mode-hook 'emmet-mode)
     (add-hook 'css-mode-hook  'emmet-mode))
