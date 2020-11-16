;; polymode-config.el
;;
;; Reference:
;; - https://github.com/polymode/polymode
;; - https://stackoverflow.com/questions/52489905/emacs-polymode-for-markdown-and-python
;; - http://mpastell.com/pweave/editors.html

(use-package poly-markdown
  :ensure t
  :mode (("\\.mdw"   . poly-markdown-mode)
         ("\\.Pmd"   . poly-pweave-mode)
         ("\\.pymd"  . poly-pweave-mode)
         ("\\.Rmd"   . poly-markdown+r-mode)
         ("\\.Rpres" . poly-noweb+r-mode)
         ("\\.Rnw"   . poly-noweb+r-mode)
         ("\\.Snw"   . poly-noweb+r-mode)
         )
 )
