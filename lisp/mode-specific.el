;; #############################################################################
;; -- Mode Specific Config --
;;
;;   - Comint
;;   - Dired
;;   - Emmet
;;   - EPA
;;   - ESHELL
;;   - ESS
;;   - Ido
;;   - flx
;;   - Magit
;;   - Markdown
;;   - Org Mode
;;   - Perl
;;   - Perspective
;;   - Polymode
;;   - Projectile
;;   - Python
;;   - SQL
;;   - tabbar
;;   - Web
;;   - YAML
;;   - Yasnippet
;;
;; #############################################################################



;; =============================================================================
;; -- Comint --
;; =============================================================================
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)



;; =============================================================================
;; -- Dired --
;; =============================================================================

;; Makes sizes human-readable
;; Sorts version numbers
;; Lists dotfiles and capital-letters first.
(setq-default dired-listing-switches "-alhv")     
                                                  
;; Tells dired we want recursive copies.                                                  
(setq dired-recursive-copies 'always)

;; Suggests dired targets
(setq dired-dwim-target t)



;; =============================================================================
;; -- EMMET --
;; =============================================================================
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)



;; =============================================================================
;; -- EPA --
; Enables Easy PG (the GNU PG interface for Emacs)
;; =============================================================================
(autoload 'epa-file "epa-file.elc")



;; =============================================================================
;; -- ESS --
;; The interface between Emacs and R, SAS, etc.
;; =============================================================================

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
(setq ess-first-continued-statement-offset 2)
(setq ess-continued-statement-offset 0)

;; Long functions look better.
(set 'ess-arg-function-offset t)

;; Loads ESS-R-Data-View and view your data in ESS!
(autoload 'ess-R-data-view "ess-R-data-view.el")

; Fixes ESS underscore --------------------------------------------------------
;; I hate the default ESS handling of underscores because I work with databases
;; a lot and guess what database columns tend to have . . . . 
(setq ess-S-assign-key (kbd "M--"))
(ess-toggle-S-assign-key t)
(ess-toggle-underscore nil)



;; =============================================================================
;; -- Ido --
;; - Enables IDO Mode
;; - Enables flexible matching
;; =============================================================================

(ido-mode t)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)

;; =============================================================================
;; -- flx / flx-ido --
;; https://github.com/lewang/flx
;; =============================================================================

(require 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
(setq gc-cons-threshold 20000000)



;; =============================================================================
;; -- Magit --
;; =============================================================================
(require 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")



;; =============================================================================
;; -- Markdown --
;; =============================================================================
(autoload 'markdown-mode "markdown-mode.el" t)
(setq auto-mode-alist
      (append '(
                ("\\.text" . markdown-mode)
                ("\\.md" . markdown-mode)
                ("\\.Rmd" . markdown-mode)
                ("\\.Rpres" . markdown-mode)
                )
              auto-mode-alist))



;; =============================================================================
;; -- Org Mode --
;; =============================================================================

;; Enables org-habit, to help me track my habitual needs.
(require 'org-habit)

;; ORG PIM Config --------------------------------------------------------------
;;(setq org-agenda-files (list "~/Git/Notes/agenda.org"))
(setq org-default-notes-file "~/Documents/Notes/notes.org")

(setq org-agenda-files (quote (
                               "~/Documents/Notes/todo.org" ;; My personal TODO list.
                               "~/Documents/Notes/notes.org" ;; Notes and TODO items from meetings.
                               "~/Documents/Notes/habits.org" ;; Recurring stuffs.
                              )))
(setq org-todo-keywords
           '((sequence "TODO(t@)" "IN PROGRESS(i@)" "|" "DONE(d@/!)")
             (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f!)")
             (sequence "|" "CANCELED(c@/!)")
             (sequence "|" "WAITING(w@/!)")
             ))

;; Sync Org Pim ----------------------------------------------------------------
(setq org-icalendar-include-todo t)     ;; Exports org-files with TODO items. 

;; Org Programming Config ------------------------------------------------------
(setq org-src-fontify-natively t)
(add-hook 'text-mode-hook '(lambda () (auto-fill-mode 1)))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Babelfish -------------------------------------------------------------------
;;(org-babel-do-load-languages
;; 'org-babel-load-languages
;; '(
;;   (ditaa      . t)
;;   (emacs-lisp . t)
;;   (latex      . t)
;;   (python     . t)
;;   (R          . t)
;;   (sh         . t)
;;   (sql        . t)
;;   (sqlite     . t)
;;   ))

;; Disables org-mode from asking for permission to run stuff -------------------
;; Make sure you know what you are doing if you use this.
;;(setq org-confirm-babel-evaluate nil)

(setq org-html-doctype "html5")

;;(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
;;(add-hook 'org-mode-hook 'org-display-inline-images)   



;; =============================================================================
;; -- Perspective --
;; https://github.com/nex3/perspective-el
;; =============================================================================
(require 'perspective)
(require 'persp-projectile)
(persp-mode)



;; =============================================================================
;; -- Polymode --
;; =============================================================================
(require 'poly-R)
(require 'poly-markdown)

(add-to-list 'auto-mode-alist '("\\.mdw" . poly-markdown-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
(add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rpres" . poly-noweb+r-mode))



;; =============================================================================
;; -- Projectile --
;;
;; https://github.com/bbatsov/projectile
;;
;; =============================================================================
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-switch-project-action 'projectile-dired)



;; =============================================================================
;; -- Python --
;; =============================================================================

;; python.el -------------------------------------------------------------------
(require 'python)
(setq
  python-shell-interpreter "ipython3"
  python-shell-interpreter-args "--pylab=qt --matplotlib=qt"
)

;; EIN -------------------------------------------------------------------------
; use autocompletion, but don't start to autocomplete after a dot
(setq ein:complete-on-dot -1)
(setq ein:use-auto-complete 1)
(setq ein:query-timeout 1000)
(require 'ein)

; shortcut function to load notebooklist
(defun load-ein () 
  (ein:notebooklist-load)
  (interactive)
  (ein:notebooklist-open))



;; =============================================================================
;; -- SQL --
;; =============================================================================

;; Stored Passwords ------------------------------------------------------------
(load-file "~/.emacs.d/sql-connections.el" )


;; SQL Editing -----------------------------------------------------------------
(setq-default sql-indent-offset 4)

(setq auto-mode-alist
      (append '(("\\.sql$" . sql-mode)
                ("\\.tbl$" . sql-mode)
                ("\\.sp$"  . sql-mode))
              auto-mode-alist))

(set 'sql-sqlite-program "sqlite3")
;;(set 'sql-sybase-program "sqsh")

;; Runs SQL commands asynchronously, improves usability for big stuff.
(set 'sql-preferred-evaluation-method "background")



;; =============================================================================
;; -- tabbar --
;; https://www.emacswiki.org/emacs/TabBarMode
;; =============================================================================

;(require 'tabbar)
;(tabbar-mode t)

;; =============================================================================
;; -- Web --
;; =============================================================================
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist '(("php" . "\\.phtml\\'") ("blade" . "\\.blade\\.")) )

(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)
(setq web-mode-style-padding 1)
(setq web-mode-script-padding 1)
(setq web-mode-block-padding 0)

(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-block-face t)
(setq web-mode-enable-part-face t)
(setq web-mode-enable-comment-keywords t)
(setq web-mode-enable-heredoc-fontification t)
(setq web-mode-enable-current-element-highlight t)

(setq web-mode-ac-sources-alist 
      '(("css" . (ac-source-css-property)) 
        ("html" . (ac-source-words-in-buffer ac-source-abbrev))) )



;; =============================================================================
;; -- YAML --
;; =============================================================================
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))



;; =============================================================================
;; -- Yasnippet --
;; =============================================================================
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"           ;; Local snippets
        "~/Git/yasnippet-snippets"      ;; https://github.com/AndreaCrotti/yasnippet-snippets.git
        ))
(yas-global-mode 1)
