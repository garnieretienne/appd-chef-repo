class Chef
  module Formatters
    class Appd < Formatters::Base

      cli_name(:appd)

      def resource_action_start(resource, action, notification_type = nil, notifier = nil)
        print "* #{action if action != :execute} #{resource.name} #{resource.resource_name}" if action != :nothing
      end

      def resource_up_to_date(resource, action)
        puts "(nothing to do)"
      end

      def resource_updated(resource, action)
        puts "(#{resource} #{action})"
      end
    end
  end
end