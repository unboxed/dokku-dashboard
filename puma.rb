daemonize
pidfile "/home/deploy/dokku-dashboard/shared/tmp/puma/pid"
state_path "/home/deploy/dokku-dashboard/shared/tmp/puma/state"
bind 'unix:///home/deploy/dokku-dashboard/shared/tmp/puma.sock'

activate_control_app
