;; #############################################################################
;; -- python --
;; #############################################################################

;; (require 'python-mode)

;; (autoload 'python-mode "python-mode" "Python Mode." t)
;; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; If you want to use ipython.
(setq python-shell-interpreter "ipython3"
      python-shell-interpreter-args "-i --simple-prompt")


;; If you want to use jupyter.
;; (setq python-shell-interpreter "jupyter"
;;       python-shell-interpreter-args "console --simple-prompt"
;;       python-shell-prompt-detect-failure-warning nil)
;; (add-to-list 'python-shell-completion-native-disabled-interpreters
;;              "jupyter")

