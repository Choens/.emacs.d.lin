;; #############################################################################
;; -- dired --
;;
;; Configures how dired works. Damned useful for file/folder management.
;;
;; #############################################################################

;; Makes sizes human-readable
;; Sorts version numbers
;; Lists dotfiles and capital-letters first.
(setq dired-listing-switches "-aBhl  --group-directories-first")
                                                  
;; Tells dired we want recursive copies.                                                  
(setq dired-recursive-copies 'always)

;; Suggests dired targets
(setq dired-dwim-target t)
