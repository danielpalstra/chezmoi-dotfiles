if not status is-interactive && test "$CI" != true
    exit
end

# abbr --add hass-restart 'ssh media docker-compose -f /srv/homeassistant/docker-compose.yml restart'

# abbr --add hass-logs 'ssh media docker-compose -f /srv/homeassistant/docker-compose.yml logs --tail=100 -f'

abbr --add hassl 'hass-logs'
abbr --add hass 'hass-cli'

abbr --add hassar 'hass service call automation.reload'
abbr --add hasssr 'hass service call script.reload'

abbr --add hass-reload 'hass service call homeassistant.reload_all'
abbr --add hassr 'hass-reload'