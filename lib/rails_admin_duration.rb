require "rails_admin_duration/engine"

module RailsAdminDuration
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Duration < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:name] == :duration
    fields << RailsAdmin::Config::Fields::Types::Duration.new(parent, properties[:name], properties)
    true
  else
    false
  end
end


