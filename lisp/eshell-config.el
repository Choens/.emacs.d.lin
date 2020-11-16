;; eshell-config.el - Collection of eshell preferences
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/EshellVisualCommands
;; - https://www.gnu.org/software/emacs/manual/html_node/eshell/Input_002fOutput.html

;; List of commands/tools commands to use ansi-term for.
(add-to-list 'eshell-visual-commands '("htop"
                                      "ipython3"
                                      "python3"
                                      "R"
                                      "vd"
                                      "vim"))

;; Commands where we need to use ansi-term for some sub-commands.
(add-to-list 'eshell-visual-subcommands '(("git" ("log" "diff" "show"))))

;; When the above commands exit - close the buffer.
(setq eshell-destroy-buffer-when-process-dies 1)
