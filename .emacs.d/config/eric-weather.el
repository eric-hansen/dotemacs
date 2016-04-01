(defun eric-weather (zip)
  "Gets current weather for provided zip code"
  (interactive)
  (unless (eric-weather-api)
    (error "No API key provided.  Set eric-weather-api")
  )
)

(provide 'eric-weather)
