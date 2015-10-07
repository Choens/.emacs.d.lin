;; #############################################################################
;; -- Mode Specific Config --
;;
;;   - Comint
;;   - Dired
;;   - EPA
;;   - ESHELL
;;   - ESS
;;   - Ido
;;     - flx
;;   - Magit
;;   - Markdown
;;   - Org Mode
;;   - Perl
;;   - Perspective
;;   - Polymode
;;   - Projectile
;;   - Python
;;   - SQL
;;   - Web
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

(setq-default dired-listing-switches "-alhv")     ; Makes sizes human-readable
                                                  ; Sorts version numbers
                                                  ; Lists dotfiles and
                                                  ; capital-letters first.
(setq dired-recursive-copies 'always)   ; Tells dired we want recursive copies.
(setq dired-dwim-target t)              ; Suggests dired targets



;; =============================================================================
;; -- EPA --
;; =============================================================================

(autoload 'epa-file "epa-file.elc")     ; Enables Easy PG
                                        ; (the GNU PG interface for Emacs)



;; =============================================================================
;; -- ESHELL --
;; =============================================================================

;;(setq eshell-path-env (concat "/home/andy/bin:" eshell-path-env))



;; =============================================================================
;; -- ESS --
;;
;; The interface between Emacs and R, SAS, etc.
;; - 
;; =============================================================================

;; Basic Settings
(require 'ess-site)
(setq-default ess-indent-offset 4)
(setq ess-help-own-frame t)

;; ESS Mode Hook
(add-hook 'ess-mode-hook
          (lambda ()
            (ess-set-style 'C++ 'quiet)
            ;; Because
            ;;                                 DEF GNU BSD K&R  C++
            ;; ess-indent-level                  2   2   8   5  4
            ;; ess-continued-statement-offset    2   2   8   5  4
            ;; ess-brace-offset                  0   0  -8  -5 -4
            ;; ess-arg-function-offset           2   4   0   0  0
            ;; ess-expression-offset             4   2   8   5  4
            ;; ess-else-offset                   0   0   0   0  0
            ;; ess-close-brace-offset            0   0   0   0  0
            (add-hook 'local-write-file-hooks
                      (lambda ()
                        (ess-nuke-trailing-whitespace)))))

(setq ess-nuke-trailing-whitespace-p 'ask)
;; or even
;; (setq ess-nuke-trailing-whitespace-p t)

;; Fixes ESS underscore --------------------------------------------------------
;; I hate the default ESS handling of underscores because I work with databases
;; a lot and guess what database columns tend to have . . . . 
(setq ess-S-assign-key (kbd "M--"))
(ess-toggle-S-assign-key t)
;;(ess-toggle-underscore nil)
(ess-toggle-underscore nil)


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

;; Loads ESS-R-Data-View
(autoload 'ess-R-data-view "ess-R-data-view.el")  ; Data viewer function.



;; =============================================================================
;; -- Ido --
;;
;; - Enables IDO Mode
;; - Enables flexible matching
;; =============================================================================

(ido-mode t)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)

;; -----------------------------------------------------------------------------
;; -- flx / flx-ido --
;;
;; https://github.com/lewang/flx
;; -----------------------------------------------------------------------------

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
(setq org-default-notes-file "~/Git/Notes/notes.org")

(setq org-agenda-files (quote (
                               "~/Notes/TODO.org"
                               "~/Notes/meetings.org"
                               "~/Notes/habits.org"
                              )))
(setq org-todo-keywords
           '((sequence "TODO(t@)" "IN PROGRESS(i@)" "|" "DONE(d@/!)")
             (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f!)")
             (sequence "|" "CANCELED(c@/!)")
             (sequence "|" "WAITING(w@/!)")
             ))


;; Sync Org Pim ----------------------------------------------------------------
(setq org-icalendar-include-todo t)     ;; Exports org-files with TODO items. 

;; ORG Programming Config ------------------------------------------------------
(setq org-src-fontify-natively t)
(add-hook 'text-mode-hook '(lambda () (auto-fill-mode 1)))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; -- Babelfish --
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
(setq org-confirm-babel-evaluate nil)

(setq org-html-doctype "html5")

;;(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
;;(add-hook 'org-mode-hook 'org-display-inline-images)   


;; =============================================================================
;; -- Pandoc --
;;
;; https://joostkremers.github.io/pandoc-mode/
;;
;; =============================================================================
;;(load "pandoc-mode")



;; =============================================================================
;; -- Perl --
;; =============================================================================

 (add-hook 'perl-mode-hook
           (lambda () (setq perl-indent-level 4)))



;; =============================================================================
;; -- Perspective --
;;
;; https://github.com/nex3/perspective-el
;;
;; =============================================================================

(require 'perspective)
(persp-mode)
(require 'persp-projectile)



;; =============================================================================
;; -- Polymode --
;; =============================================================================

(require 'polymode-common)
(require 'polymode-classes)
(require 'polymode-methods)
(require 'polymode-export)
(require 'polymode-weave)
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

;------------------------;
;;; python-mode ;;;
;------------------------;

;(require 'python-mode)
;(setq py-shell-name "ipython3")

;; -----------------------
;; python.el
;; -----------------------

(require 'python)
(setq
  python-shell-interpreter "ipython3"
  python-shell-interpreter-args "--pylab=qt --matplotlib=qt"
)

;; -----------------------------
;; EIN
;; -----------------------------

; use autocompletion, but don't start to autocomplete after a dot
(setq ein:complete-on-dot -1)
(setq ein:use-auto-complete 1)


; timeout settings
(setq ein:query-timeout 1000)

; IPython notebook
;(include-plugin "emacs-ipython-notebook/lisp")
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
(load-file "~/config/sql-connections.el" ) 

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

;; Save SQL History in product-specific files ----------------------------------
;; Source: http://www.emacswiki.org/emacs/SqlMode
(defun my-sql-save-history-hook ()
  (let ((lval 'sql-input-ring-file-name)
        (rval 'sql-product))
    (if (symbol-value rval)
        (let ((filename 
               (concat "~/.emacs.d/sql/"
                       (symbol-name (symbol-value rval))
                       "-history.sql")))
          (set (make-local-variable lval) filename))
      (error
       (format "SQL history will not be saved because %s is nil"
               (symbol-name rval))))))
 
(add-hook 'sql-interactive-mode-hook 'my-sql-save-history-hook)


;; Make SQL Returns look nicer (lines things up correctly) ---------------------
;; Source: http://www.emacswiki.org/emacs/SqlMode
(defvar sql-last-prompt-pos 1
  "position of last prompt when added recording started")
(make-variable-buffer-local 'sql-last-prompt-pos)
(put 'sql-last-prompt-pos 'permanent-local t)

(defun sql-add-newline-first (output)
  "Add newline to beginning of OUTPUT for `comint-preoutput-filter-functions'
    This fixes up the display of queries sent to the inferior buffer
    programatically."
  (let ((begin-of-prompt
         (or (and comint-last-prompt-overlay
                  ;; sometimes this overlay is not on prompt
                  (save-excursion
                    (goto-char (overlay-start comint-last-prompt-overlay))
                    (looking-at-p comint-prompt-regexp)
                    (point)))
             1)))
    (if (> begin-of-prompt sql-last-prompt-pos)
        (progn
          (setq sql-last-prompt-pos begin-of-prompt)
          (concat "\n" output))
      output)))

(defun sqli-add-hooks ()
  "Add hooks to `sql-interactive-mode-hook'."
  (add-hook 'comint-preoutput-filter-functions
            'sql-add-newline-first))

(add-hook 'sql-interactive-mode-hook 'sqli-add-hooks)


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
;; -- Yasnippet --
;; =============================================================================

(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"           ;; Local snippets
        "~/Git/analytic-snippets"       ;; Analytic templates snippets.
        "~/Git/yasnippet-snippets"      ;; https://github.com/AndreaCrotti/yasnippet-snippets.git
        ))

(yas-global-mode 1)
