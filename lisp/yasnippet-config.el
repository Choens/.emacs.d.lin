;; yasnippet-config.el
;;
;; Reference:
;; - 
;; - https://github.com/AndreaCrotti/yasnippet-snippets.git

(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"           ;; Local snippets
        "~/Git/yasnippet-snippets"      ;; 
        ))
(yas-global-mode 1)
