;;; Compiled snippets and support files for `ess-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ess-mode
                     '(("func" "${1:fun} <- function(${2:args}){\n\n    $0\n\n} ## END $1\n" "function" nil
                        ("definitions")
                        nil "/home/andy/.emacs.d/snippets/ess-mode/function" nil nil)
                       ("for" "for(i in seq_along(1))\n\n    $0\n\n} ## END for(i in seq_along($1))\n" "for" nil
                        ("definitions")
                        nil "/home/andy/.emacs.d/snippets/ess-mode/for" nil nil)))


;;; Do not edit! File generated at Mon Jul 24 21:41:04 2017
