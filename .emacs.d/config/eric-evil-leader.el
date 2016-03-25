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
	"j" 'init-eric-org-jira
	"I" 'start-irc
)

(evil-leader/set-leader ";")

(setq evil-leader/no-prefix-mode-rx
            '(".*sql-.*" "jabber-chat" "eshell-mode" "ERC" "Erc.*" "slime-repl.*"
	          "magit-.*-mode" "gnus-.*-mode" "twittering-mode" "Org-Agenda" "Package"))

(provide 'eric-evil-leader)
