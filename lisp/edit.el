;; #############################################################################
;; -- edit --
;;
;; Contents:
;;   - Tabs/Indentation
;;   - Editing
;;   - Backup
;;   - Custom Lisp
;;   - Aliases
;;   - Keybindings
;;   - Session
;; #############################################################################

;; -- Tabs/Indentation --
(setq-default tab-width 4)              ; Specifies default offset.
(setq-default c-basic-offset 4)         ; Specifies offset for C
(setq-default indent-tabs-mode nil)     ; Use spaces, not tabs!


;; -- Editing --
(delete-selection-mode 1)				; Delete when typing over selection
(put 'narrow-to-region 'disabled nil)	; Enable Narrow to region.
(put 'downcase-region 'disabled nil)

;; -- Backup --
(setq  backup-by-copying t )            ; Enables Emacs backups
(setq   backup-directory-alist          ; Sets the backup directory
    '(("." . "~/.emacs.d/backups")) )     
(setq delete-old-versions t )           ; Delete old versions
(setq kept-new-versions 5 )             ; Keep no more than 5 new versions
(setq version-control t )               ; Use 'version' control for files
