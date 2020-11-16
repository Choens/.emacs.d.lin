;; https://github.com/kaz-yos/eval-in-repl

;; require the main file containing common functions
(require 'eval-in-repl)

;; Uncomment if no need to jump after evaluating current line
;; (setq eir-jump-after-eval nil)

;; Uncomment if you want to always split the script window into two.
;; This will just split the current script window into two without
;; disturbing other windows.
(setq eir-always-split-script-window t)

;; Uncomment if you always prefer the two-window layout.
;; (setq eir-delete-other-windows t)

;; Place REPL on the right of the script window when splitting.
(setq eir-repl-placement 'right)



;;; Hy support
;; (require 'hy-mode) ; if not done elsewhere
;;(require 'eval-in-repl-hy)
;;(define-key hy-mode-map (kbd "<C-return>") 'eir-eval-in-hy)


;;; Python support
;; (require 'python) ; if not done elsewhere
(require 'eval-in-repl-python)
(add-hook 'python-mode-hook
          '(lambda ()
             (local-set-key (kbd "<C-return>") 'eir-eval-in-python)))
;; Shell support
(require 'eval-in-repl-shell)
(add-hook 'sh-mode-hook
          '(lambda()
             (local-set-key (kbd "C-<return>") 'eir-eval-in-shell)))
;; Version with opposite behavior to eir-jump-after-eval configuration
;;(defun eir-eval-in-shell2 ()
;;  "eval-in-repl for shell script (opposite behavior)
;;   This version has the opposite behavior to the eir-jump-after-eval
;;   configuration when invoked to evaluate a line."
;;  (interactive)
;;  (let ((eir-jump-after-eval (not eir-jump-after-eval)))
;;    (eir-eval-in-shell)))
;;(add-hook 'sh-mode-hook
;;          '(lambda()
;;             (local-set-key (kbd "C-M-<return>") 'eir-eval-in-shell2)))
