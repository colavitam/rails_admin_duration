module RailsAdminDuration
  class Engine < ::Rails::Engine
    initializer "RailsAdminDuration precompile" do |app|
      app.config.assets.precompile += %w(
        rails_admin/ra.duration.css
      )
    end
  end
end
