;; epa-config.el - Enables Easy PG (the GNU PG interface for Emacs)
;;
;; Reference:
;; - https://www.gnu.org/software/emacs/manual/html_mono/epa.html

(autoload 'epa-file "epa-file.elc")
(setf epa-pinentry-mode 'loopback)
