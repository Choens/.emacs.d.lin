;; dired-config.el - Manage files in Emacs!
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/DiredMode

;; -- Basics --
;; - Human-readable file size,
;; - Sorts version numbers,
;; - Lists dotfiles and capital-letters first.
(setq dired-listing-switches "-aBhl  --group-directories-first")
                                                  
;; Tells dired we want recursive copies.                                                  
(setq dired-recursive-copies 'always)

;; Suggests dired targets
(setq dired-dwim-target t)
