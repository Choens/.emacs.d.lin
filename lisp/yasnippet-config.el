;; yasnippet-config.el
;;
;; I want to think more about this. I never use the bloddy thing.
;;
;; Reference:
;; - 
;; - https://github.com/AndreaCrotti/yasnippet-snippets.git

(use-package yasnippet
  :ensure t
  :init
  (setq yas-snippet-dirs
      '("~/.emacs.d/snippets"           ;; Local snippets
        "~/Git/yasnippet-snippets"      ;; 
        ))
  (yas-reload-all)
  :config
  (yas-global-mode 1)
