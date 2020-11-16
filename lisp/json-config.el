;; json-config.el - JSON in Emacs
;;
;; Reference:
;; - https://github.com/joshwnj/json-mode
;; - https://github.com/jcf/emacs.d/blob/master/init-languages.org

(use-package json-mode
  :ensure t
  :mode "\\.json\\'"
  :config
  (defun jcf-json-mode-hook ()
    (interactive)
    (setq js-indent-level 2))
  (add-hook 'json-mode-hook 'jcf-json-mode-hook))
