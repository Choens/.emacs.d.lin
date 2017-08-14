;; #############################################################################
;; -- markdown --
;; #############################################################################

(autoload 'markdown-mode "markdown-mode.el" t)
(setq auto-mode-alist
      (append '(
                ("\\.text" . markdown-mode)
                ("\\.md" . markdown-mode)
;                ("\\.Rmd" . markdown-mode)
;                ("\\.Rpres" . markdown-mode)
                )
              auto-mode-alist))
