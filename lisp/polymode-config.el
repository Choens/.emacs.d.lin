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
         ("\\.Rmd"   . poly-markdown+r-mode)
         ("\\.Rpres" . poly-noweb+r-mode)
         ("\\.Rnw"   . poly-noweb+r-mode)
         ("\\.Snw"   . poly-noweb+r-mode)
         )
  :config
  ;; define pwn polymode
  (require 'poly-noweb)
  (require 'poly-markdown)

  (defcustom pm-inner/noweb-python
    (clone pm-inner/noweb
           :name "noweb-python"
           :mode 'python-mode)
    "Noweb for Python"
    :group 'poly-innermodes
    :type 'object)

  (define-polymode poly-pweave-mode poly-markdown-mode
    :innermodes '(pm-inner/noweb-python :inherit)))
