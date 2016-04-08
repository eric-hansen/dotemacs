(pkg 'epa)

(epa-file-enable)

(defvar eric-auth-extension "el.gpg" "The extension of encrypted files")
(defvar eric-auth-path "~" "The path where passwd file is stored")
(defvar eric-auth-file "passwd" "The filename to load for passwords and other sensitive information")
(defvar eric-auth nil "The full path + filename to load, only set this on init so the variables can be changed prior to setting up")

(defun eric-auth-init ()
  (interactive)
  (add-to-list 'load-suffixes eric-auth-extension)
  (setq eric-auth (format "%s/%s.%s" eric-auth-path eric-auth-file eric-auth-extension)))

(provide 'eric-auth)
