(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			("org" . "http://orgmode.org/elpa/")
			("gnu" . "http://elpa.gnu.org/packages/")))
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

;; Org-mode for my own stuff
(require 'eric-org-mode)

;; Keep this last so we can set any generic or special things after the packages have been loaded
(require 'eric-general-setup)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
