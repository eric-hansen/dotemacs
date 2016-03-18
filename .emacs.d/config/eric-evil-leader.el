(require 'evil-leader)
(require 'helm)

(defun insert-semi ()
    "Insert a semi."
    (interactive)
    (insert ";")
)

(evil-leader-mode)
(global-evil-leader-mode)
(evil-leader/set-key
	";" 'insert-semi
	"x" 'helm-M-x
	"e" 'helm-find-files
	"b" 'helm-mini
	"k" 'kill-buffer
	"f" 'helm-projectile-find-file
	"p" 'helm-projectile-switch-project
	"s" 'helm-swoop
	"i" 'helm-imenu
	"h" 'helm-projectile
	"o" 'kill-buffer-and-window
)

(evil-leader/set-leader ";")

(provide 'eric-evil-leader)
