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
;;   - Keybindings
;; #############################################################################

;; -- Tabs/Indentation --
(setq-default tab-width 4)              ; Specifies default offset.
(setq-default c-basic-offset 4)         ; Specifies offset for C
(setq-default indent-tabs-mode nil)     ; Use spaces, not tabs!


;; -- Editing --
(delete-selection-mode 1)				; Delete when typing over selection
(put 'narrow-to-page 'disabled nil)     ; Enable Narrow to page.
(put 'narrow-to-region 'disabled nil)	; Enable Narrow to region.
(put 'downcase-region 'disabled nil)
;;(setq select-enable-clipboard 1)        ; When in a terminal, use X-Clipboard
;;(setq select-enable-primary 1)          ; When in a terminal, use Primary

;; -- Backup --
(setq  backup-by-copying t )            ; Enables Emacs backups
(setq   backup-directory-alist          ; Sets the backup directory
    '(("." . "~/.emacs.d/backups")) )     
(setq delete-old-versions t )           ; Delete old versions
(setq kept-new-versions 5 )             ; Keep no more than 5 new versions
(setq version-control t )               ; Use 'version' control for files

;; -- Keybindings --
;; Go to a specific line.
(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key [M-left] 'windmove-left)          
(global-set-key [M-right] 'windmove-right)        
(global-set-key [M-up] 'windmove-up)              
(global-set-key [M-down] 'windmove-down)
(global-set-key (kbd "C-c pp") 'projectile-persp-switch-project)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-x t") 'toggle-truncate-lines)
(global-set-key [f11] 'toggle-fullscreen)
(global-set-key [f1] 'menu-bar-mode)

;; Use Epiphany When/Where Possible
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "epiphany")
