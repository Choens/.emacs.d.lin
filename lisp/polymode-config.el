;; polymode-config.el
;;
;; Reference:
;; - https://github.com/polymode/polymode

(use-package poly-markdown
    :ensure t
    :mode (("\\.mdw"   . poly-markdown-mode)
           ("\\.Rmd"   . poly-markdown+r-mode)
           ("\\.Snw"   . poly-noweb+r-mode)
           ("\\.Rnw"   . poly-noweb+r-mode)
           ("\\.Rpres" . poly-noweb+r-mode)
           ))
