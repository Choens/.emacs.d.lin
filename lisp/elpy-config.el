;; elpy-config.el - Python programming
;;
;; This works, but it doesn't work well. The keybindings are clumsy and things
;; just feel slow.
;;
;; Reference:
;; - https://realpython.com/blog/python/emacs-the-best-python-editor/
;; - https://emacs.stackexchange.com/questions/16637/how-to-set-up-elpy-to-use-python3
;; - https://github.com/jorgenschaefer/elpy
;;

;;(use-package python
;;  :mode (("\\.py\\'"      . python-mode)
;;         ("SConstruct\\'" . python-mode)
;;         ("SConscript\\'" . python-mode))
;;  :init
;;  (add-hook 'python-mode-hook 'elpy-initialize-local-variables))



(use-package elpy
  :ensure t
  :after python
  :mode (("\\.py\\'"      . python-mode)
         ("SConstruct\\'" . python-mode)
         ("SConscript\\'" . python-mode))
  :bind (("C-c <return>" . elpy-shell-send-codecell)
        )
  :init (with-eval-after-load 'python (elpy-enable))
  ;:init (elpy-enable)
  :config
  ;; Enables flycheck
  (when (require 'flycheck nil t)
    (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
    (add-hook 'elpy-mode-hook 'flycheck-mode))

  ;; Use Python3, damnit
  (setq elpy-rpc-python-command "/bin/python")
  (setq elpy-rpc-backend "jedi")
  (setq elpy-rpc-timeout 25)

  ;;(setq python-shell-interpreter "/bin/jupyter"
  ;;      python-shell-interpreter-args "console --simple-prompt"
  ;;      python-shell-prompt-detect-failure-warning nil
  ;;) 
  ;;(add-to-list 'python-shell-completion-native-disabled-interpreters "jupyter")

  ;;(setq python-shell-interpreter "ipython"
  ;;      ;;python-shell-interpreter-args "--TerminalIPythonApp.interactive_shell_class=rlipython.TerminalInteractiveShell"
  ;;      python-shell-interpreter-args "console --simple-prompt"
  ;;      python-shell-prompt-detect-failure-warning nil
  ;;      ;;--PlainTextFormatter.max_width=500
  ;;      )
  ;;(add-to-list 'python-shell-completion-native-disabled-interpreters "ipython")

  (setq python-shell-interpreter "python")
  (add-to-list 'python-shell-completion-native-disabled-interpreters "python")

  ;; Use Spyder-compatible codecells.
  (setq elpy-shell-codecell-beginning-regexp "# %%")
  (setq elpy-shell-cell-boundary-regexp  "# %%")

  ;; Autocompletion
  (setq elpy-get-info-from-shell t)
  ;;(setq company-backends '(company-dabbrev-code
                          ;; elpy-company-backend
                          ;;company-yasnippet
  ;;                         ))     
  )
