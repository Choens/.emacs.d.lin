;; #############################################################################
;; -- ein --
;; #############################################################################

;; use autocompletion, but don't start to autocomplete after a dot
(setq ein:complete-on-dot -1)
(setq ein:use-auto-complete 1)
(setq ein:query-timeout 1000)
(require 'ein)

(setq ein:use-auto-complete t)

; shortcut function to load notebooklist
;(defun load-ein () 
;  (ein:notebooklist-load)
;  (interactive)
;  (ein:notebooklist-open))
