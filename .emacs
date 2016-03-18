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

;; Org-mode for my own stuff
(require 'eric-org-mode)

;; Keep this last so we can set any generic or special things after the packages have been loaded
(require 'eric-general-setup)