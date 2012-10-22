worker_processes 5
timeout 30
preload_app true

before_fork do |server, worker|
end

after_fork do |server, worker|
end