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

          register_instance_option :partial do
            :form_duration
          end

          def days
            value / 1.day
          end

          def hours
            (value % 1.day) / 1.hour
          end

          def minutes
            (value % 1.hour) / 1.minute
          end

          def seconds
            (value % 1.minute) / 1.second
          end
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties.name == :duration
    fields << RailsAdmin::Config::Fields::Types::Duration.new(parent, properties.name, properties)
    true
  else
    false
  end
end


