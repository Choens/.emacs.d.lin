;; orgmode-config.el - How to org!
;;
;; Reference:
;; - http://orgmode.org/

;; (use-package ob-ipython
;;   :ensure t)

(use-package org
  :ensure t  
  :mode (("\\.org$" . org-mode))
  :bind (("\C-cl" . org-store-link)
         ("\C-ca" . org-agenda)
         ("\C-cb" . org-iswitchb)
         ("\C-cc" . org-capture))
  :config
  (require 'org-habit)

  ;; Disable visual fill in org-mode files.
  (visual-fill-column-mode -1)
  (visual-line-mode -1)
  
  ;; -- ORG PIM --
  ;;(setq org-agenda-files (list "~/Git/Notes/agenda.org"))
  (setq org-default-notes-file "~/Documents/Notes/Notes.org")
  
  (setq org-agenda-files '("~/Documents/Notes/" "~/Documents/Notes/Acuitas Projects/"))
  (setq org-refile-targets '((org-agenda-files :maxlevel . 3)))
  (setq org-todo-keywords
        '((sequence "TODO(t@)" "IN PROGRESS(i@)" "|" "DONE(d@/!)")
          (sequence "FOLLOW UP(f@)" "|" "DONE(d@/!)")
          (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f!)")
          (sequence "|" "CANCELED(c@/!)")
          (sequence "|" "WAITING(w@/!)")
          ))
  
  ;; -- Sync Org Pim --
  (setq org-icalendar-include-todo t)     ;; Exports org-files with TODO items. 
  
  ;; -- Org Programming --
  (setq org-src-fontify-natively t)
  (add-hook 'text-mode-hook '(lambda () (auto-fill-mode 1)))
  (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
  
  ;; -- Babelfish --
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (ditaa      . t)
     (emacs-lisp . t)
     ;; (ipython    . t)
     (latex      . t)
     (python     . t)
     (R          . t)
     (shell      . t)
     (sql        . t)
     (sqlite     . t)
     ))
  
  ;; Disables org-mode from asking for permission to run stuff
  ;; Make sure you know what you are doing if you use this.
  (setq org-confirm-babel-evaluate nil)
  
  ;; Use HTML5 Export --
  (setq org-html-doctype "html5")
  
  ;; -- Inline graphics --
  (setq org-display-inline-images t)
  (setq org-redisplay-inline-images t)
  (setq org-startup-with-inline-images t)
  ;;(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
  ;;(add-hook 'org-mode-hook 'org-display-inline-images)
  )
