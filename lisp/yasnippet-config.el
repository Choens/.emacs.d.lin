;; #############################################################################
;; -- yasnippet --
;; #############################################################################

(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"           ;; Local snippets
        "~/Git/yasnippet-snippets"      ;; https://github.com/AndreaCrotti/yasnippet-snippets.git
        ))
(yas-global-mode 1)
