(require 'org)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(add-hook 'org-mode-hook 'evil-org-mode)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(provide 'eric-org-mode)
