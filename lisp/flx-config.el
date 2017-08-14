;; #############################################################################
;; -- flx / flx-ido --
;; https://github.com/lewang/flx
;; #############################################################################

(require 'flx-ido)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
(setq gc-cons-threshold 20000000)
