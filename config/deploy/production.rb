set :stage, :production

server '109.234.38.73', user: 'deploy', roles: %w{web app}
