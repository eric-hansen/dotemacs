;; This file houses all the functions used in eric-evil-leader, as the same key binding should be usable for different modes
;; The syntax is basically the function name being evil-<key> and the body doing various things based on the current major-mode.
;; So for example if I want to share ";p" across different modes I would write a function called evil-p and that would handle all the
;; different modes.

(defvar eric-activity-priority 'erc "If there's an unread buffer for ERC and Jabber, set this to determine which one should be switched to first.")
(defvar eric-evil-t-shell "/bin/bash" "The shell to use in multi-term")

(require 'helm)
(require 'projectile)
(require 'multi-term)

(defun replace-in-buffer ()
  (interactive)
  (save-excursion
    (if (equal mark-active nil) (mark-word))
    (setq curr-word (buffer-substring-no-properties (mark) (point)))
    (setq old-string (read-string "OLD string:\n" curr-word))
    (setq new-string (read-string "NEW string:\n" old-string))
    (query-replace old-string new-string nil (point-min) (point-max))))

(defun evil-t ()
  (interactive)
  (setq eric-evil-t-shell (read-string (format "Shell for terminal [%s]: " eric-evil-t-shell) nil nil eric-evil-t-shell))
  (setq multi-term-program eric-evil-t-shell)
  (call-interactively 'multi-term))

(defun evil-b ()
  (interactive)
  (helm-mini)
  )

(defun evil-r ()
  (interactive)
  (replace-in-buffer))

(defun evil-G ()
  (interactive)
  (let* ((query-string (read-string "String to search for: " (thing-at-point 'word)))
	 (evil-G-extension (file-name-extension (buffer-file-name)))
	 (files-quoted (format "'%s'" (read-string "Files: " (format "*.%s" evil-G-extension)))))
    (vc-git-grep query-string files-quoted (projectile-project-root))
    (switch-to-buffer-other-window "*grep*")))

(defun evil-I ()
  (interactive)
  (if (not (equal major-mode 'erc-mode))
     (call-interactively 'start-irc)
     (message "Already in IRC")
  ))

(defun evil-l ()
  (interactive)
  (call-interactively 'load-file))

(defun evil-p ()
  (interactive)
  (next-buffer)
)

(defun evil-m ()
  (interactive)
  (call-interactively 'magit-status))

(defun evil-j ()
  "Do different actions with this key based on the mode we are in."
  (interactive)
  (message "Current unread: [ERC: %d | Jabber: %d]" (length erc-modified-channels-alist) (length jabber-activity-jids))
  (if (< 0 (length erc-modified-channels-alist))
      (call-interactively 'erc-track-switch-buffer)
    (if jabber-activity-jids
	(call-interactively 'jabber-activity-switch-to)
      )))

(defun evil-J ()
  (interactive)
  (when (eq (string-prefix-p major-mode 'jabber-chat nil) nil)
    (jabber-connect-all)
  ))

(defun evil-s ()
  (interactive)
  (call-interactively 'magit-status))

(defun evil-S ()
  (interactive)
  (message "evil-S called"))

(defun evil-comma ()
  (interactive)
  (message "Current major mode is %s" major-mode))

(defun evil-T ()
  (interactive)
  (unless (equal major-mode 'twittering-mode)
    (call-interactively 'twit)))

(provide 'eric-evil-funcs)
