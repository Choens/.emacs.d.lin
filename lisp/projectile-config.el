;; #############################################################################
;; -- projectile --
;;
;; https://github.com/bbatsov/projectile
;;
;; #############################################################################

(require 'projectile)
(projectile-mode)
(setq projectile-enable-caching t)
(setq projectile-switch-project-action 'projectile-dired)
(setq projectile-project-search-path '("~/Git/" "~/Documents/"))
