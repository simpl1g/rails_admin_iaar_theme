require "rails_admin_iaar_theme/engine"
require 'rails_admin/config/actions'

module RailsAdminIaarTheme
end

module RailsAdmin
  module Config
    module Actions
      class Statistics < Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :root? do
          true
        end
        register_instance_option :link_icon do
          'icon-signal'
        end
        register_instance_option :controller do
          Proc.new do
            @grouped_users = User.grouped_by_day
          end
        end
      end
    end
  end
end