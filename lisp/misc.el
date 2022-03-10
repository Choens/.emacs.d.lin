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

(defun open-renviron ()
  (interactive)
  (find-file "~/.Renviron"))

(defun open-secrets-yaml ()
  (interactive)
  (find-file "~/secrets.yaml"))

(defun open-sql-yaml ()
  (interactive)
  (find-file "~/sql.yaml"))


;; -- Open-Specific Folders --
(defun open-ccp ()
  (interactive)
  (find-file "~/Documents/CCP/")
  (set-frame-name "CCP Project"))
(defun open-documents-cdphp ()
  (interactive)
  (find-file "~/Documents/CDPHP/")
  (set-frame-name "CDPHP Project"))

(defun open-intro-to-data ()
  (interactive)
  (find-file "~/Documents/Intro To Data/")
  (set-frame-name "Intro To Data"))


(defun open-emacs ()
  (interactive)
  (find-file "~/.emacs.d/")
  (set-frame-name ".emacs.d"))

(defun open-documents ()
  (interactive)
  (find-file "~/Documents/")
  (set-frame-name "Documents"))

(defun open-documents-ccp ()
  (interactive)
  (find-file "~/Documents/CCP/")
  (set-frame-name "CCP Project"))

(defun open-documents-cdphp ()
  (interactive)
  (find-file "~/Documents/CDPHP/")
  (set-frame-name "CDPHP Project"))

(defun open-documents-cop ()
  (interactive)
  (find-file "~/Documents/COP/")
  (set-frame-name "COP Project"))

(defun open-documents-install-scripts ()
  (interactive)
  (find-file "~/Documents/Install Scripts/")
  (set-frame-name "Install Scripts"))

(defun open-documents-intro-to-data ()
  (interactive)
  (find-file "~/Documents/Intro To Data/")
  (set-frame-name "Intro To Data"))

(defun open-documents-intro-to-data-lectures ()
  (interactive)
  (find-file "~/Documents/Intro To Data/Lectures/")
  (set-frame-name "Intro To Data: Lectures"))

(defun open-documents-intro-to-data-labs ()
  (interactive)
  (find-file "~/Documents/Intro To Data/Labs/")
  (set-frame-name "Intro To Data: Labs"))

(defun open-documents-resume ()
  (interactive)
  (find-file "~/Documents/Resume/")
  (set-frame-name "Resume"))

(defun open-documents-review ()
  (interactive)
  (find-file "~/Documents/Review/")
  (set-frame-name "Review"))

(defun open-documents-rsc ()
  (interactive)
  (find-file "~/Documents/RSC/")
  (set-frame-name "RSC Projects"))

(defun open-documents-notes ()
  (interactive)
  (find-file "~/Documents/Notes/")
  (set-frame-name "Notes")
  )

(defun open-downloads ()
  (interactive)
  (find-file "~/Downloads/"))

(defun open-git ()
  (interactive)
  (find-file "~/Git/")
  (set-frame-name "Git"))

(defun open-notes ()
  (interactive)
  (find-file "~/Documents/Notes/")
  (set-frame-name "Notes"))



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
