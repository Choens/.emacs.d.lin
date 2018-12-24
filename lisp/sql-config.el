;; sql-config.el
;;
;; Reference:
;; - 

;; -- Connections --
(load-file "~/.emacs.d/sql-connections.el" )


;; -- Edit --
(setq-default sql-indent-offset 4)
(setq auto-mode-alist
      (append '(("\\.sql$" . sql-mode)
                ("\\.tbl$" . sql-mode)
                ("\\.sp$"  . sql-mode))
              auto-mode-alist))
(set 'sql-preferred-evaluation-method "background")

;; -- Sqlite --
(set 'sql-sqlite-program "sqlite3")

;; -- Sybase --
;;(set 'sql-sybase-program "sqsh")
;; Runs SQL commands asynchronously, improves usability for big stuff.

