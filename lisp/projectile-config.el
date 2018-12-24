;;  projectile-config.el
;;
;; Reference:
;; - https://github.com/bbatsov/projectile

(use-package projectile
  :ensure t
  :bind (("C-x p" . projectile-switch-project)
         ("C-x c"  . projectile-commander))             
  :init
  (setq projectile-completion-system 'ivy)
  (setq projectile-enable-caching t)
  (setq projectile-switch-project-action 'projectile-dired)
  (setq projectile-project-search-path '("~/Git/" "~/Documents/")))

