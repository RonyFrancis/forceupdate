require "forceupdate/version"
require_relative 'api_exception'

# force update class
module Forceupdate
  class << self
  # check app os and app version
    def app_update_check(os, app_version)
      raise SkipUpdateError if UPDATE_CONFIG['skip_update'][os].values.include?(app_version)
      raise ForceUpdateError if UPDATE_CONFIG['force_update'][os].values.include?(app_version)
    end
  end
end
