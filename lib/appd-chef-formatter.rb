class Chef
  module Formatters
    class Appd < Formatters::Base

      cli_name(:appd)

      def resource_action_start(resource, action, notification_type = nil, notifier = nil)
        print "* #{action} #{resource.name} #{resource.resource_name}"
      end

      def resource_completed(resource)
        puts "OK!"
        super
      end
    end
  end
end