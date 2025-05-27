alert_fast = {
    file = true
}
alert_json = {
    file = true
}
daq = {
    inputs = {'ens33','ens38'},
}
ips = {
    rules = [[ include /etc/snort/rules/local.rules ]],
    variables = {
          nets = {
              HOME_NET = '10.1.1.0/24',
              EXTERNAL_NET = 'any',
              UBUNTU_SERVER = '10.1.1.2'
          }
    }
}
  
