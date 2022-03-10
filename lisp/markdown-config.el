;; markdown.el - Markdown editing in Emacs.
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/MarkdownMode
;; - https://jblevins.org/projects/markdown-mode/

(use-package markdown-mode
    :ensure t
    :mode (("README\\.md\\'" . gfm-mode)
           ("\\.md\\'" . markdown-mode)
           ("\\.markdown\\'" . markdown-mode))
    :commands (markdown-mode gfm-mode)
    :config
    :init (setq markdown-command "multimarkdown"))


