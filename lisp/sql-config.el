;; sql-config.el
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/CategorySql
;; - https://www.emacswiki.org/emacs/SqlMode
;; - https://github.com/sebasmonia/sqlcmdline

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
