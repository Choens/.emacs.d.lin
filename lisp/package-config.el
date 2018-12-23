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
  '(counsel
    csv-mode
    ein
    elpy
    emmet-mode
    ;; I use the version packaged wth Fedora.
    ;;ess
    eval-in-repl
    flycheck
    ivy
    magit
    markdown-mode
    material-theme
    org-gnome
    org-plus-contrib
    ox-reveal
    perspective
    polymode
    poly-R
    poly-markdown
    poly-noweb
    poly-org
    py-autopep8
    solarized-theme
    swiper
    web-mode
    ;; I use the version packaged wth Fedora.
    ;;yaml-mode 
    yasnippet))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(package-initialize)
