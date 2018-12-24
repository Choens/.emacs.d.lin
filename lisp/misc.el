;; misc.el - Collection of miscellaneous lisp
;;
;; Where possible, I document the original source of the function, but the
;; function here may or may not be the same as the original source function(s).
;;
;; - Open Functions
;; - Project Functions
;; - Highlight Functions
;; - toggle-fullscreen
;; - Text Manipulation



;; ---- Open Functions ----
;;
;; Collection of open-* functions intended to make it easier to open specific
;; files and folders.


;; -- Open-Specific Files --
(defun open-passwords ()
  (interactive)
  (find-file "~/Documents/Notes/Passwords.org.gpg"))

(defun open-sql-yaml ()
  (interactive)
  (find-file "~/sql.yaml"))


;; -- Open-Specific Folders --
(defun open-emacs ()
  (interactive)
  (find-file "~/.emacs.d/")
  (set-frame-name ".emacs"))

(defun open-documents ()
  (interactive)
  (find-file "~/Documents/")
  (set-frame-name "Documents"))

(defun open-downloads ()
  (interactive)
  (find-file "~/Downloads/"))

(defun open-notes ()
  (interactive)
  (find-file "~/Documents/Notes/")
  (set-frame-name "Notes"))

(defun open-git ()
  (interactive)
  (find-file "~/Git/")
  (set-frame-name "Git"))

(defun open-ad-hoc-ccp ()
  (interactive)
  (find-file "~/Documents/Ad Hoc CCP/")
  (set-frame-name "Ad Hoc CCP"))

(defun open-projects-ccp ()
  (interactive)
  (find-file "~/Documents/Projects CCP/")
  (set-frame-name "Projects CCP"))

(defun open-reports-ccp ()
  (interactive)
  (find-file "~/Documents/Reports CCP/")
  (set-frame-name "Reports CCP"))

(defun open-validation-ccp ()
  (interactive)
  (find-file "~/Documents/Validation CCP/")
  (set-frame-name "Validation CCP"))



;; ---- Highlight Functions ----

(defun hl-todo ()
	"Highlight all instances of the phrase 'TODO - '"
	(interactive)
	(highlight-phrase "TODO - "))

(defun hl-fixme ()
	"Highlight all instanaces of the phrase 'FIXME - '"
	(interactive)
	(highlight-phrase "FIXME - "))

(defun hl-note ()
	"Highlight all instanaces of the phrase 'NOTE - '"
	(interactive)
	(highlight-phrase "NOTE - "))



;; ---- toggle-fullscreen ----
;; Source: http://www.emacswiki.org/emacs/FullScreen#toc17

(defun toggle-fullscreen ()
  "Toggles full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))



;; =============================================================================
;; -- Text Manipulation --
;; =============================================================================

;; -----------------------------------------------------------------------------
;; Clears the current buffer.
;; -----------------------------------------------------------------------------
(defun clear-buffer ()
  (interactive)
  (mark-whole-buffer)
  (delete-region (region-beginning) (region-end)))

;; -----------------------------------------------------------------------------
;; Use M-w and C-w on entire line when a
;; region is not selected.
;; Source: http://www.emacswiki.org/emacs/WholeLineOrRegion
;; -----------------------------------------------------------------------------
(put 'kill-ring-save 'interactive-form
     '(interactive
       (if (use-region-p)
           (list (region-beginning) (region-end))
         (list (line-beginning-position) (line-beginning-position 2)))))

(put 'kill-region 'interactive-form      
     '(interactive
       (if (use-region-p)
           (list (region-beginning) (region-end))
         (list (line-beginning-position) (line-beginning-position 2)))))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
