(setq jiralib-url "http://jira.nabsource.northamericanbancard.com")

(eric-pkg 'org-jira)

(defun init-eric-org-jira ()
  "Enable ORG JIRA minor mode and fetch new issues"
  (interactive)
  (message "Sweet entry man")
  (unless org-jira-mode (org-jira-mode t))
  (call-interactively 'org-jira-get-issues)
)

(provide 'eric-org-jira)
