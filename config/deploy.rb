# config valid only for current version of Capistrano
lock '3.4.1'

# Set the application name
set :application, 'webhookhandler'

# Set the repository link
set :repo_url, 'https://github.com/ub-digit/webhookhandler.git'

# Set tmp directory on remote host - Default value: '/tmp , which often will not allow files to be executed
set :tmp_dir, '/home/apps/tmp'

# Copy originals into /{app}/shared/config from respective sample file
# set :linked_files, %w{}

set :rvm_ruby_version, '2.6.0'      # Defaults to: 'default'

# Returns config for current stage assigned in config/deploy.yml
def deploy_config
  @config ||= YAML.load_file("config/deploy.yml")
  stage = fetch(:stage)
  return @config[stage.to_s]
end

server deploy_config['host'], user: deploy_config['user'], roles: deploy_config['roles']

set :deploy_to, deploy_config['path']
