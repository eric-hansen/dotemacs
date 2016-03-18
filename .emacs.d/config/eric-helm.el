(require 'helm-config)
(helm-mode 1)

(when (executable-find "curl")
    (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p t
      helm-autoresize-mode t
      helm-M-x-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t
)

;; (global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)

(provide 'eric-helm)
