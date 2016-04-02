(require 'package)

(setq pkg-initialized nil)

(defun pkg-init ()
;;  (package-initialize)
  (package-refresh-contents)
  (setq pkg-initialized t))

; There's no sane way in Emacs it seems to install packages if they don't exist,
; so by default if you call require on a package that doesn't exist Emacs will
; stop loading in your configs.
;
; This stops that from happening by checking if the package exists, and if not
; it will install it.  After the check (and potential install) it will call
; require on that package.
(defun pkg (pkg)
  "Checks if a package is installed, if not then install it, and then require it"
  (interactive)
  ; We need to initialize the package listing to make sure this works, but only do it once
  (unless pkg-initialized
    (pkg-init))

  (unless (package-installed-p pkg)
    (package-install pkg))

  (require pkg))

(provide 'pkg-funcs)
