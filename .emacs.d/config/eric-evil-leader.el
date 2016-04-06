(require 'evil-leader)
(require 'helm)
(require 'eric-evil-funcs)

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
	"s" 'evil-s
	"S" 'evil-S
	"i" 'helm-imenu
	"h" 'helm-projectile
	"o" 'kill-buffer-and-window
	"j" 'evil-j
        "J" 'evil-J
	"I" 'start-irc
	"t" 'evil-t
	"," 'evil-comma
	"m" 'evil-m
)

(evil-leader/set-leader ";")

(setq evil-leader/no-prefix-mode-rx
            '(".*sql-.*" "jabber-chat" "eshell-mode" "ERC" "Erc.*" "slime-repl.*"
	          "magit-.*-mode" "gnus-.*-mode" "twittering-mode" "Org-Agenda" "Package" "Message*" ))

(provide 'eric-evil-leader)
