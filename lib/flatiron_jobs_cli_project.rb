require 'pry'
require 'nokogiri'
require 'greenhouse_io'

require_relative "flatiron_jobs_cli_project/version"
require_relative "flatiron_jobs_cli_project/job_post"
require_relative "flatiron_jobs_cli_project/cli"
require_relative "flatiron_jobs_cli_project/api"

module FlatironJobsCliProject
  class Error < StandardError; end
  # Your code goes here...
end
