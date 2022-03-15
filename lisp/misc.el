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
  (find-file "~/dev/notes/reference.org.gpg"))

(defun open-renviron ()
  (interactive)
  (find-file "~/.Renviron"))

;; -- Open-Specific Folders --
(defun open-intro-to-data ()
  (interactive)
  (find-file "~/dev/acphs/")
  (set-frame-name "Intro To Data"))


(defun open-emacs ()
  (interactive)
  (find-file "~/.emacs.d/")
  (set-frame-name ".emacs.d"))

(defun open-documents ()
  (interactive)
  (find-file "~/Documents/")
  (set-frame-name "Documents"))

(defun open-dev-acuitas ()
  (interactive)
  (find-file "~/dev/acuitas/")
  (set-frame-name "CCP Project"))

(defun open-dev-ccp ()
  (interactive)
  (find-file "~/dev/acuitas/ccp/")
  (set-frame-name "CCP Project"))

(defun open-dev-cdphp ()
  (interactive)
  (find-file "~/dev/acuitas/cdphp/")
  (set-frame-name "CDPHP Project"))


(defun open-dev-andy ()
  (interactive)
  (find-file "~/dev/andy/")
  (set-frame-name "Andy's Stuff"))

(defun open-dev-install-scripts ()
  (interactive)
  (find-file "~/dev/andy/install-scripts")
  (set-frame-name "Install Scripts"))


(defun open-dev-intro-to-data ()
  (interactive)
  (find-file "~/dev/acphs/intro-to-data/")
  (set-frame-name "Intro To Data"))

(defun open-dev-resume ()
  (interactive)
  (find-file "~/dev/andy/job-search/resume/")
  (set-frame-name "Resume"))


(defun open-dev-notes ()
  (interactive)
  (find-file "~/dev/and/notes/")
  (set-frame-name "Notes")
  )

(defun open-notes ()
  (interactive)
  (find-file "~/dev/and/notes/")
  (set-frame-name "Notes")
  (load-theme 'solarized-light t)
  )

(defun open-downloads ()
  (interactive)
  (find-file "~/Downloads/"))

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



;; ---- Text Manipulation ----

;; -- Clears the current buffer --
(defun clear-buffer ()
  (interactive)
  (mark-whole-buffer)
  (delete-region (region-beginning) (region-end)))

;;(defun move-line-up ()
;;  "Move up the current line."
;;  (interactive)
;;  (transpose-lines 1)
;;  (forward-line -2)
;;  (indent-according-to-mode))
;;
;;(defun move-line-down ()
;;  "Move down the current line."
;;  (interactive)
;;  (forward-line 1)
;;  (transpose-lines 1)
;;  (forward-line -1)
;;  (indent-according-to-mode))
