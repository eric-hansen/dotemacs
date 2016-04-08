(setq environment nil)

;; This is set because its easier to navigate windows with shift+arrow than most other means.
(windmove-default-keybindings)

(setq default-init-environment 'home)
(setq current-init-environment nil)

;; Initialize whatever Emacs environment we want to, with a default at this point (see default-init-environment).
;; If no environment variable is passed in then set it to a default.  Then load in the environment.  While not
;; mandatory we should set the current environment before loading so that anything that depends on this doesn't
;; have to worry about catching it being nil.
(defun emacs-init ()
  (let ((env (getenv "EMACS_ENV"))
       )
    (unless env
      (setq env default-init-environment))
    (setq current-init-environment env)
    (load (format "~/.emacs.%s" env))))

(emacs-init)
