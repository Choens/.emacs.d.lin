;; #############################################################################
;; misc.el
;;
;; Collection of miscellaneous lisp I have collected over the years.
;;
;; Note:
;; Where possible, I document the original source of the function, but the
;; function here may or may not be the same as the original source function(s).
;;
;; - Analytic Template Integration
;; - Open Functions
;; - Project Functions
;; - Highlight Functions
;; - toggle-fullscreen
;; - Text Manipulation
;; #############################################################################

;; =============================================================================
;; -- Analytic Template Integration --
;;
;; Small collection of functions to help me integrate my analytic templates
;; stuff into my workflow. Probably a bit hacky, but whatever.
;;
;; =============================================================================

(defun template-files ()
  (interactive)
  (find-file "/media/andy/Git/analytic-templates/"))

(defun template-proj ()
  (interactive)
  (find-file "/media/andy/Git/analytic-template-r/"))



;; =============================================================================
;; -- Open Functions --
;;
;; Collection of open-* functions intended to make it easier to open specific
;; files and folders.
;;
;; =============================================================================

;; -- Open-Specific Files --
(defun open-buy ()
  (interactive)
  (find-file "~/Notes/buy.org"))

(defun open-init ()
  (interactive)
  (find-file "~/.emacs.d/"))

(defun open-passwords ()
  (interactive)
  (find-file "~/Notes/passwords.org.gpg"))

(defun open-sql-conn ()
  (interactive)
  (find-file "~/config/sql-connections.el"))

;; -- Open-Specific Folders --
(defun open-bin ()
  (interactive)
  (find-file "~/bin/"))

(defun open-config ()
  (interactive)
  (find-file "~/config/"))

(defun open-documents ()
  (interactive)
  (find-file "~/Documents/"))

(defun open-downloads ()
  (interactive)
  (find-file "~/Downloads/"))

(defun open-notes ()
  (interactive)
  (find-file "~/Notes/"))

(defun open-git ()
  (interactive)
  (find-file "~/Git/"))



;; =============================================================================
;; -- Highlight Functions --
;; =============================================================================

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



;; ============================================================================= 
;; -- toggle-fullscreen --
;; Source: http://www.emacswiki.org/emacs/FullScreen#toc17
;; =============================================================================
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
