;; This file houses all the functions used in eric-evil-leader, as the same key binding should be usable for different modes
;; The syntax is basically the function name being evil-<key> and the body doing various things based on the current major-mode.
;; So for example if I want to share ";p" across different modes I would write a function called evil-p and that would handle all the
;; different modes.

(defvar eric-activity-priority 'erc "If there's an unread buffer for ERC and Jabber, set this to determine which one should be switched to first.")

(defun evil-I ()
  (interactive)
  (if (not (equal major-mode 'erc-mode))
     (call-interactively 'start-irc)
     (message "Already in IRC")
  ))

(defun evil-p ()
  (interactive)
  ;; do stuff
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

(defun evil-t ()
  (interactive)
  (when (not major-mode 'twittering-mode)
    (call-interactively 'twit)))

(provide 'eric-evil-funcs)
