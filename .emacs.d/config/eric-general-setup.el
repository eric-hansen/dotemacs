(require 'package)

(setq eric-pkg-initialized nil)

(defun eric-pkg-init ()
  (package-initialize)
  (setq eric-pkg-initialized t)
)

(defun eric-pkg (pkg)
  "Checks if a package is installed, if not then install it, and then require it"
  (interactive)
  (unless eric-pkg-initialized
    (eric-pkg-init)
  )

  (unless (package-installed-p pkg)
    (package-install pkg)
  )
  (require pkg)
)

(global-hl-line-mode 1)
(setq scroll-step 1)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(line-number-mode 1)
(column-number-mode 1)

;; Hide welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(provide 'eric-general-setup)
