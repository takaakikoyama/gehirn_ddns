set :output, "./log/cron.log"
job_type :rbenv_exec, "export PATH=\"$HOME/.rbenv/bin:$PATH\"; eval \"$(rbenv init -)\"; cd :path && ruby :task :output"

every 2.hours do
  rbenv_exec "./bin/gehirn_ddns"
end
