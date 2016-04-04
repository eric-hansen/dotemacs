(require 'request)
(require 'json)

(defvar eric-weather-api nil)

(defun eric-weather (zip)
  "Gets current weather for provided zip code"
  (interactive "sZip: ")
  (unless eric-weather-api
    (user-error "No API key provided.  Set eric-weather-api"))
  (let* ((apiUrl
          (format "http://api.openweathermap.org/data/2.5/weather?zip=%s,us&units=imperial&appid=%s" zip eric-weather-api)
	  ))
    (request
     apiUrl
     :parser 'json-read
     :success (function*
               (lambda (&key data &allow-other-keys)
                 (let ((description (assoc-default 'description (elt (assoc-default 'weather data) 0)))
                       (temp (assoc-default 'temp (assoc-default 'main data)))
                       (city (assoc-default 'name data)))
                   (message "%s is %s @ %s degrees" city description temp)))))))

(provide 'eric-weather)
