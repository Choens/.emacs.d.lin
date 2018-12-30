;; package-config.el
;;
;; I'm not currently using this. It is commented out in my init.el.
;; In the future, I may delete this entirely.

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
    ;;emmet-mode
    ;; I use the version packaged wth Fedora.
    ;;ess
    eval-in-repl
    flycheck
    ivy
    julia-mode
    magit
    markdown-mode
    material-theme
    ob-ipython
    org-gnome
    org-plus-contrib
    ox-reveal
    persp-projectile
    perspective
    polymode
    poly-R
    poly-markdown
    poly-org
    poly-noweb
    poly-org
    py-autopep8
    pyvenv
    request-deferred
    solarized-theme
    swiper
    use-package
    web-mode
    ;; I use the version packaged wth Fedora.
    ;;yaml-mode 
    yasnippet))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(package-initialize)
