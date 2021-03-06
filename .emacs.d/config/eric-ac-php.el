(require 'ac-php)

(add-hook 'php-mode-hook
	'(lambda ()
		(auto-complete-mode t)
		(require 'ac-php)
		(setq ac-sources '(ac-source-php ) )
		(yas-global-mode 1)
		(define-key php-mode-map (kbd "C-]") 'ac-php-find-symbol-at-point)
		(define-key php-mode-map (kbd "C-t") 'ac-php-location-stack-back )
	)
)

(provide 'eric-ac-php)
