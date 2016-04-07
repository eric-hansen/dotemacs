(setq environment nil)

;; This is set because its easier to navigate windows with shift+arrow than most other means.
(windmove-default-keybindings)

(defun emacs-init ()
  (let ((env (getenv "EMACS_ENV"))
       )
       (load (format "~/.emacs.%s" env))
  ))

(emacs-init)
