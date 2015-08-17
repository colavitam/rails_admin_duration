module RailsAdminDuration
  class Engine < ::Rails::Engine
    initializer "RailsAdminDuration precompile hook", group: :all do |app|
      app.config.assets.precompile += [
        'rails_admin/rails_admin_duration.css'
      ]
    end
  end
end
