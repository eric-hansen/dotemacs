(require 'php-mode)

(autoload 'php-mode "php-mode" "Major mode for editing PHP." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(provide 'eric-php-mode)
