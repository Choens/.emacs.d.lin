;; ess-config.el - The interface between Emacs and R, SAS, etc.
;;
;; Reference:
;; - https://ess.r-project.org/
;; - I install this via the Fedora repo. Seems more stable this way.
;; - Add `:ensure t` if/when this is necessary.

(use-package ess
    ;;:commands R
    :load-path "site-lisp/ess"
    :mode (("\\.[rR]\\'" . R-mode)
           ("\\.jl\\'"   . julia-mode)
           ("\\.sas\\'"  . sas-mode))
    ;;:init (require 'ess-site)
    :config
    ;; Get rid of trailing whitespace.
    (setq ess-nuke-trailing-whitespace-p 't)

    ;; Indentation theme, makes it consistent with RStudio, etc.
    (setq ess-default-style 'RRR)
    ;;(setq ess-default-style 'RStudio-)

    ;; Turns on ESS auto complete!
    (setq ess-use-auto-complete t)

    ;; Helps Emacs help with large scripts.
    (setq ess-eval-visibly-p 'nowait)
    (setq ess-eval-visibly 'nowait)

    ;; Don't use Sweave. Use Knitr!
    (setq ess-swv-processor 'knitr)

    ;; Fixes the ugly endless indentation when chaining functions, using pipes, etc.
    (setq ess-offset-continued 2)

    ;; Make long functions look better.
    (set 'ess-indent-from-lhs t)

    ;; Loads ESS-R-Data-View and view your data in ESS!
    ;;(autoload 'ess-R-data-view "ess-R-data-view.el")

    ;; Fix ESS underscore
    (ess-toggle-underscore nil)

    ;; Set my path to R
    ;; Only needed if I'm using anaconda.
    ;;(setq inferior-R-program-name "~/anaconda3/envs/rstudio/bin/R")
    )
