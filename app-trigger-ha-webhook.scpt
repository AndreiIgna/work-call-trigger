set appName to "zoom.us"

if application appName is running then

    do shell script ("curl -X POST http://homeassistant.local:8123/api/webhook/work_call")

    return "Running"
else
    return "Not running"
end if
