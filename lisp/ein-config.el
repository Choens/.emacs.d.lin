;; ein-config.el - Emacs Ipython Notebook
;;
;; Reference:
;; - https://github.com/tkf/emacs-ipython-notebook
;; - Config: https://github.com/r0man/.emacs.d/blob/master/init.el.org

(use-package ein
    :ensure t
    :init
    (setq ein:use-auto-complete t)
    (setq ein:complete-on-dot -1)    ;; Don't autocomplete after a dot
    (setq ein:query-timeout 1000)
    (setq ein:jupyter-default-server-command 'jupyter_app)
    (require 'ein)
    )
