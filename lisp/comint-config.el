;; comint-config.el Alter how comint-based buffers work.
;;
;; Comint is used by SQL, ESS, etc.
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/ComintMode

(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)
