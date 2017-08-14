;; #############################################################################
;; -- python --
;; #############################################################################

(require 'python)
(when (executable-find "ipython3")
  (setq
   python-shell-interpreter "ipython3"
   python-shell-interpreter-args "--simple-prompt -i"
   ;;python-shell-interpreter-args "--pylab=qt --matplotlib=qt"
   ))
