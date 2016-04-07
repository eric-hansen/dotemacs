(pkg 'epa)

(epa-file-enable)

(defvar eric-auth-extension ".el.gpg" "The extension of encrypted files")

(defun eric-auth-init ()
  (interactive)
  (add-to-list 'load-suffixes eric-auth-extension))

(provide 'eric-auth)
