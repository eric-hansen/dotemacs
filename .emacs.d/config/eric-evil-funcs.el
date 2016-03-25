;; This file houses all the functions used in eric-evil-leader, as the same key binding should be usable for different modes
;; The syntax is basically the function name being evil-<key> and the body doing various things based on the current major-mode.
;; So for example if I want to share ";p" across different modes I would write a function called evil-p and that would handle all the
;; different modes.

(defun evil-p ()
  (interactive)
  ;; do stuff
)
