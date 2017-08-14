;; #############################################################################
;; -- ess --
;; The interface between Emacs and R, SAS, etc.
;; #############################################################################

;; Basic Settings
(require 'ess-site)

;; Get rid of trailing whitespace.
(setq ess-nuke-trailing-whitespace-p 't)

;; Indentation theme, makes it consistent with RStuduio, etc.
(setq ess-default-style 'RRR)

;; Turns on ESS auto complete!
(setq ess-use-auto-complete t)

;; Helps Emacs help with large scripts.
(setq ess-eval-visibly-p 'nowait)

;; Don't use Sweave. Use Knitr!
(setq ess-swv-processor 'knitr)

;; Fixes the ugly endless indentation when chaining functions, using pipes, etc.
(setq ess-offset-continued 2)
;(setq ess-offset-continued 0)

;; Long functions look better.
(set 'ess-indent-from-lhs t)

;; Loads ESS-R-Data-View and view your data in ESS!
(autoload 'ess-R-data-view "ess-R-data-view.el")

; Fixes ESS underscore --------------------------------------------------------
;; I hate the default ESS handling of underscores because I work with databases
;; a lot and guess what database columns tend to have . . . . 
;(add-hook 'ess-mode-hook
;          (lambda ()
;            (ess-toggle-underscore nil)))
(ess-toggle-underscore nil)
