(require 'package)

(defun eric-pkg (pkg)
  "Checks if a package is installed, if not then install it, and then require it"
  (interactive)
  (message "Checking for existence of %s" pkg)
  (package-initialize)
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
