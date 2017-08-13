;; #############################################################################
;; SQL Connections
;;
;; Preconfigured database connections
;; #############################################################################

;; -----------------------------------------------------------------------------
;; Database Config Notes:
;;
;; Postgres:
;; - Edit ~/.pgpass to enable passwordless logins.
;;
;; SQL Server:
;; - If you are using sqsh to connect to SQL Server, tell Emacs to connect to
;;   a Sybase DB because sqsh uses Sybase style command-line parameters.
;; -----------------------------------------------------------------------------

(setq sql-connection-alist
      (quote (
              (
               "hpdw"
               (sql-product (quote vertica))
               (sql-server "10.49.10.30")
               (sql-user "axc38")
               (sql-database "hpdw")
               )
              (
               "cpdm"
               (sql-product (quote vertica))
               (sql-server "cpdbvi01.miscny.nyenet")
               (sql-user "axc38")
               (sql-database "cpdm")
               )
              )
             )
      )



;; -----------------------------------------------------------------------------
;; Custom Connection Commands
;;
;; Defines connection strings from the connections seen above.
;; Based on: https://truongtx.me/2014/08/23/setup-emacs-as-an-sql-database-client
;;
;; -----------------------------------------------------------------------------

(defun sql-hpdw ()
  (interactive)
  (sql-connect-def 'vertica 'hpdw))

(defun sql-cpdm ()
  (interactive)
  (sql-connect-def 'vertica 'cpdm))

(defun sql-connect-def (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-connect connection))
