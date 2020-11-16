;; python.el - Python programming
;;
;; Because life is complicated, this contains both python-el settings
;; AND other python-related things.
;; This works better than elpy. It seems faster, easier. But it isn't getting me everything.
;;
;; Reference:
;; - https://realpython.com/blog/python/emacs-the-best-python-editor/
;; - https://www.emacswiki.org/emacs/PythonProgrammingInEmacs#toc2
;; - https://gitlab.com/wavexx/python-x.el/blob/master/python-x.el
;; - https://melpa.org/#/python-x
;; - https://github.com/proofit404/anaconda-mode
;;

;; python-el -------------------------------------------------------------------
(use-package python
  :mode (("\\.py\\'"      . python-mode)
         ("SConstruct\\'" . python-mode)
         ("SConscript\\'" . python-mode))
  :hook ((python-mode-hook . anaconda-mode)
         (python-mode-hook . anaconda-eldoc-mode)
         (python-mode-hood . jupyter)
        )
  :init

  ;; Python Interpreters -----------------------------------
  
  ;;python
  (setq python-shell-interpreter "python")

  ;;ipython
  ;;(setq python-shell-interpreter "ipython"
  ;;      python-shell-interpreter-args "--simple-prompt --pprint -i"
  ;;)
  
  ;;jupyter
  ;;(setq python-shell-interpreter "jupyter"
  ;;      python-shell-interpreter-args "--simple-prompt"
  ;;)

  
  
  ;; Silences some unneeded warnings.
  (setq python-indent-guess-indent-offset t)  
  (setq python-indent-guess-indent-offset-verbose nil)
  
  ;;(add-hook 'python-mode-hook 'anaconda-mode)
  ;;(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
  ;;(add-hook 'python-mode-hook 'jedi:setup)

  ;; This is . . . OK . . . but Python specific.
  (python-x-setup)
  (setq python-section-delimiter "#%%")
  
  )

