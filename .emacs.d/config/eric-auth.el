(pkg 'epa)

(epa-file-enable)

(defvar eric-auth-extension "el.gpg" "The extension of encrypted files")
(defvar eric-auth-path "~" "The path where passwd file is stored")
(defvar eric-auth-file "passwd" "The filename to load for passwords and other sensitive information")
(defvar eric-auth nil "The full path + filename to load, only set this on init so the variables can be changed prior to setting up")

;; Due to the use of configurable vars above, we really should force an init method in case they change.
;; A way around this would be to do customize settings but that will be a WIP for me.
(defun eric-auth-init ()
  (interactive)
  (add-to-list 'load-suffixes eric-auth-extension)
  (setq eric-auth (format "%s/%s.%s" eric-auth-path eric-auth-file eric-auth-extension)))

;; Use this instead of simply (require <passwd>) for better error handling (ish?)
(defun eric-auth-load ()
  (unless (file-exists-p eric-auth)
    (error "Auth file is either unreadable or does not exist: %s" eric-auth))
  (require eric-auth-file))

(provide 'eric-auth)
