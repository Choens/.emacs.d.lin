;; ein-config.el - Emacs Ipython Notebook
;;
;; Reference:
;; - https://github.com/tkf/emacs-ipython-notebook

;; use autocompletion, but don't start to autocomplete after a dot
(setq ein:complete-on-dot -1)
(setq ein:use-auto-complete 1)
(setq ein:query-timeout 1000)
(setq ein:jupyter-default-server-command 'jupyter_app)
(require 'ein)

(setq ein:use-auto-complete t)

; shortcut function to load notebooklist
(defun load-ein () 
  (ein:notebooklist-load)
  (interactive)
  (ein:notebooklist-open))
