# -*- encoding : utf-8 -*-
require 'rails/generators'

class Sufia::ShoryukenGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  desc """
Configuration for Amazon SQS queue processing via Shoryuken gem.
    Note: not intended for simultaneous use with Sidekiq, Resque, etc.
       """

  def shoryuken_gem
    gem 'shoryuken'
    run 'bundle install'
  end

  def queue_adapter
    application 'config.active_job.queue_adapter = :shoryuken'
  end

  def copy_shoryuken_yml
    copy_file 'config/shoryuken.yml', 'config/shoryuken.yml'
  end

  def copy_shoryuken_initializer
    copy_file 'config/000_shoryuken.rb', 'config/initializers/000_shoryuken.rb'
  end

end
