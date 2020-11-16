;; csv-config.el - Do something about your commas!
;;
;; Reference:
;; - https://github.com/jcf/emacs.d/blob/master/init-languages.org

(use-package csv-mode
  :ensure t
  :mode "\\.[Cc][Ss][Vv]\\'"
  :init (setq csv-separators '("," ";" "|" " ")))
