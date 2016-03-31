(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/org-jira"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))

(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			("org" . "http://orgmode.org/elpa/")
			("gnu" . "http://elpa.gnu.org/packages/")))

;; Make sure the package handling support is loaded
(require 'pkg-funcs)

;; Keep this last so we can set any generic or special things after the packages have been loaded
(require 'eric-general-setup)

;; Org-mode for my own stuff
(require 'eric-org-mode)

;; JIRA org-mode because...we can
(require 'eric-org-jira)

(require 'eric-evil)
(require 'eric-evil-leader)
(require 'eric-helm)
(require 'eric-projectile)
(require 'eric-php-mode)
(require 'phpunit)
(require 'php-refactor-mode)
(require 'auto-complete)
(require 'eric-ac-php)
(require 'yasnippet)
(require 'phpunit)
(require 'magit)

;; Molokai theme
(require 'eric-molokai-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c17682e5f6777de51cd0b010431a0071bfeab7c71ce56f7a7d37183a7d25f40" "2da65cb7074c176ca0a33f06bcc83ef692c9175e41b6370f5e94eb5811d6ee3a" "daff9088309eae1b2c4a7122618a101244444faf7d9bbd367809e17a203e316f" "c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
