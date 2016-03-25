(require 'w3m)

(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(global-set-key "C-xm" 'browse-url-at-point)
(setq w3m-use-cookies t)
(setq w3m-coding-system 'utf-8
          w3m-file-coding-system 'utf-8
          w3m-file-name-coding-system 'utf-8
          w3m-input-coding-system 'utf-8
          w3m-output-coding-system 'utf-8
          w3m-terminal-coding-system 'utf-8)
(standard-display-ascii ?\225 [?+])
(standard-display-ascii ?\227 [?-])
(standard-display-ascii ?\222 [?'])
(setq w3m-use-filter t)
;; send all pages through one filter
(setq w3m-filter-rules `(("\\`.+" w3m-filter-all)))

(defun w3m-filter-all (url)
  (let ((list '(
                ;; add more as you see fit!
                   ("&#187;" "&gt;&gt;")
                   ("&laquo class="comment">;" "&lt;")
                ("&raquo class="comment">;" "&gt;")
                ("&ouml class="comment">;" "o")
                ("&#8230;" "...")
                ("&#8216;" "'")
                ("&#8217;" "'")
                ("&rsquo class="comment">;" "'")
                ("&lsquo class="comment">;" "'")
                ("\u2019" "\'")
                ("\u2018" "\'")
                ("\u201c" "\"")
                ("\u201d" "\"")
                ("&rdquo class="comment">;" "\"")
                ("&ldquo class="comment">;" "\"")
                ("&#8220;" "\"")
                ("&#8221;" "\"")
                ("\u2013" "-")
                   ("\u2014" "-")
                ("&#8211;" "-")
                ("&#8212;" "-")
                ("&ndash class="comment">;" "-")
                ("&mdash class="comment">;" "-")
                )))
  (while list
    (let ((pat (car (car list)))
          (rep (car (cdr (car list)))))
      (goto-char (point-min))
      (while (search-forward pat nil t)
        (replace-match rep))
      (setq list (cdr list))))))
 (if (string= system-type "darwin")
     (setq process-connection-type nil))
