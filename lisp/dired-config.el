;; #############################################################################
;; -- dired --
;; #############################################################################

;; Makes sizes human-readable
;; Sorts version numbers
;; Lists dotfiles and capital-letters first.
(setq-default dired-listing-switches "-alhv")     
                                                  
;; Tells dired we want recursive copies.                                                  
(setq dired-recursive-copies 'always)

;; Suggests dired targets
(setq dired-dwim-target t)
