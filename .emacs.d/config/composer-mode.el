;;; composer-mode.el -- A composer.json major mode

(defvar composer-mode-hook nil)

(defvar composer-mode-map
  (let ((map (make-keymap)))
    (define-key map "\C-u" 'composer-update)
    (define-key map "\C-w" 'composer-self-update)
    map)
  "Keymap for composer.json major mode")

;;;###autoload
(add-to-list 'auto-mode-alist '("composer\\.json\\'" . composer-mode))

(defun composer-update ()
  "Update composer.lock and any packages where necessary"
  (interactive)
  (message "Updating composer package not yet available."))

(defun composer-self-update ()
  "Self-update composer itself"
  (interactive)
  (message (shell-command-to-string "composer about"))
  )

(defun composer-mode ()
  "Major mode for composer.json"
  (interactive)
  (kill-all-local-variables)
  (setq major-mode 'composer-mode)
  (setq mode-name "COMPOSER")
  (use-local-map composer-mode-map)
  (run-hooks 'composer-mode-hook))

(provide 'composer-mode)
