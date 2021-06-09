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

;(defun myindent-ess-hook ()
;  (setq ess-indent-offset 2))

(use-package ess-site
  :ensure ess
  :mode (("\\.jl\\'"   . julia-mode)
         ("\\.[rR]\\'" . R-mode)
         ("\\.sas\\'"  . sas-mode)
         )
  :commands R
  ;:hook (
  ;       ;'ess-mode-hook
  ;       'myindent-ess-hook
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
  (setq
   ess-style 'RStudio
   ;ess-indent-offset 2
   ess-offset-arguments 'prev-line
   ess-nuke-trailing-whitespace-p 't
   ess-indent-with-fancy-comments nil
   ess-indent-from-lhs t
   ess-use-auto-complete t
   ess-eval-visibly-p 'nowait
   ess-eval-visibly 'nowait
   ess-swv-processor 'knitr
   )
  )
