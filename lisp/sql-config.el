;; sql-config.el
;;
;; Reference:
;; - 

(use-package sql
  :commands sql-mode
  :mode (("\\.sql$" . sql-mode)
         ("\\.tbl$" . sql-mode)
         ("\\.sp$"  . sql-mode))
  :config
  (load "~/secrets.el")
  (setq-default sql-indent-offset 4)
  (set 'sql-preferred-evaluation-method "background")
  (set 'sql-sqlite-program "sqlite3"))
