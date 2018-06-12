;; #############################################################################
;; -- epa --
;; Enables Easy PG (the GNU PG interface for Emacs)
;; #############################################################################

(autoload 'epa-file "epa-file.elc")
(setf epa-pinentry-mode 'loopback)
