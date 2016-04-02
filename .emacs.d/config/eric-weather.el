(require 'request)
(require 'json)

(setq eric-weather-api nil)

(defun eric-weather (zip)
  "Gets current weather for provided zip code"
  (interactive "sZip: ")
  (if (not (boundp 'eric-weather-api))
    (error "No API key provided.  Set eric-weather-api"))
  (if (not (boundp 'eric-weather-unit))
    (setq eric-weather-unit 'imperial))

  (setq apiUrl 
   (format "http://api.openweathermap.org/data/2.5/weather?zip=%s,us&units=%s&appid=%s" zip eric-weather-unit eric-weather-api)
  )

  (message "URL: %s" apiUrl)

  (request
    apiUrl
   :parser 'json-read
   :success (function*
	   (lambda (&key data &allow-other-keys)
	     (setq description (assoc-default 'description (elt (assoc-default 'weather data) 0)))
	     (setq temp (assoc-default 'temp (assoc-default 'main data)))
	     (setq city (assoc-default 'name data))
	     (message "%s is %s @ %s degrees" city description temp)  
	     )
	   )
  ))

(provide 'eric-weather)
