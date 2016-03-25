(setq jiralib-url "http://jira.nabsource.northamericanbancard.com")

(require 'org-jira)
;;  (org-jira-get-issues nil)

(defun init-eric-org-jira ()
  "Enable ORG JIRA minor mode and fetch new issues"
  (interactive)
  (message "Sweet entry man")
  (unless org-jira-mode (org-jira-mode t))
;;;  (org-jira-get-issues ())
  (call-interactively 'org-jira-get-issues)
)

(provide 'eric-org-jira)
