if Rails.env.development?
  module Rack
    class CommonLogger
      alias_method :log_without_assets, :log
      ASSETS_PREFIX = "/#{Rails.application.config.assets.prefix[/\A\/?(.*?)\/?\z/, 1]}/"
      def log(env, status, header, began_at)
        unless env['REQUEST_PATH'].start_with?(ASSETS_PREFIX) || env['REQUEST_PATH'].start_with?('/uploads')  || env['REQUEST_PATH'].start_with?('/system')
          log_without_assets(env, status, header, began_at)
        end
      end
    end
  end
end
