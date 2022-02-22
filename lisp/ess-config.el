;; ess-config.el - The interface between Emacs and R, SAS, etc.
;;
;; Reference:
;; - https://ess.r-project.org/
;; - https://github.com/japhir/ArchConfigs/blob/master/myinit.org

(defun ac/insert-r-pipe ()
  "Insert the pipe operator in R, %>%"
  (interactive)
  (just-one-space 1)
  (insert "%>%")
  (reindent-then-newline-and-indent)
  )

(use-package ess
  :ensure t
  :init (require 'ess-site)
  :mode (("\\.jl\\'"   . julia-mode)
         ("\\.[rR]\\'" . R-mode)
         ("\\.sas\\'"  . sas-mode)
         )
  :commands R
                                        ;:hook (
                                        ;       )
  :bind (:map ess-r-mode-map
              (";" . ess-insert-assign)
              ;; RStudio equivalents
              ("M--" . ess-insert-assign)
              ("C-S-m" . ac/insert-r-pipe)
              :map inferior-ess-r-mode-map
              (";" . ess-insert-assign)
              ("M--" . ess-insert-assign)
              ("C-S-m" . ac/insert-r-pipe))
  :config
  (setq ess-style 'RStudio)
  (setq ess-indent-offset 2)
  (setq ess-offset-arguments 'prev-line)
  (setq ess-nuke-trailing-whitespace-p 't)
  (setq ess-indent-with-fancy-comments nil)
  (setq ess-indent-from-lhs t)
  (setq ess-use-auto-complete t)
  (setq ess-eval-visibly-p 'nowait)
  (setq ess-eval-visibly 'nowait)
  (setq ess-swv-processor 'knitr)
  )
