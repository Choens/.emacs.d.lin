;; #############################################################################
;; -- packages --
;; #############################################################################

(require 'package)
(setq package-archives'(
                        ("gnu" . "http://elpa.gnu.org/packages/")
                        ;; I tend to use melpa preferentially over marmalade.
                        ;;("marmalade" . "http://marmalade-repo.org/packages/")
                        ("melpa" . "http://melpa.milkbox.net/packages/")
                        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; -- Install Missing --
;; M-x package-list-packages installed packages.
(defvar myPackages
  '(
    csv-mode
    ein
    elpy
    emmet-mode
    ess-R-data-view
    eval-in-repl
    flycheck
    flx-ido
    ir-black-theme
    magit-filenotify
    markdown-mode
    material-theme
    org-gnome
    org-plus-contrib
    ox-reveal
    persp-projectile
    polymode
    py-autopep8
    solarized-theme
    web-mode
    yaml-mode 
    yasnippet))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)
