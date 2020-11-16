;; ein-config.el - Emacs Ipython Notebook
;;
;; Reference:
;; - https://github.com/tkf/emacs-ipython-notebook
;; - Config: https://github.com/r0man/.emacs.d/blob/master/init.el.org

(use-package ein
    :ensure t
    :init
    (require 'ein-notebook)
    ;;(require 'ein-subpackages)
    (setq ein:use-auto-complete t)
    (setq ein:query-timeout 1000)
    (setq ein:jupyter-default-server-command 'jupyter)
    (setq ein:jupyter-server-use-subcommand 'notebook)
    (require 'ein)
    )


