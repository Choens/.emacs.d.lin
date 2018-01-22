;; #############################################################################
;; -- elpy --
;;
;; Kudos - https://realpython.com/blog/python/emacs-the-best-python-editor/
;;
;; #############################################################################

(elpy-enable)

;; Enables flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enables PEP8 checking
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Ipython / Jupyter
;;(elpy-use-ipython) ;; deprecated
(setq elpy-rpc-python-command "python3")
