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

          register_instance_option :pretty_value do
            parts = []
            
            parts << ActionController::Base.helpers.pluralize(days, "day") if days > 0
            parts << ActionController::Base.helpers.pluralize(hours, "hour") if hours > 0
            parts << ActionController::Base.helpers.pluralize(minutes, "minute") if minutes > 0
            parts << ActionController::Base.helpers.pluralize(seconds, "second") if seconds > 0

            parts.join(", ")
          end

          def days
            return 0 if value.blank?
            value / 1.day
          end

          def hours
            return 0 if value.blank?
            (value % 1.day) / 1.hour
          end

          def minutes
            return 0 if value.blank?
            (value % 1.hour) / 1.minute
          end

          def seconds
            return 0 if value.blank?
            (value % 1.minute) / 1.second
          end

          def parse_input(params)
            n_days = params[name][:days].try(:to_i)
            n_hours = params[name][:hours].try(:to_i)
            n_minutes = params[name][:minutes].try(:to_i)
            n_seconds = params[name][:seconds].try(:to_i)

            if n_days.nil? || n_hours.nil? || n_minutes.nil? || n_seconds.nil?
              params[name] = nil
            else
              params[name] = n_days.days + n_hours.hours + n_minutes.minutes + n_seconds.seconds
            end
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


