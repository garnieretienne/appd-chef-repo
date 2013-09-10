class Chef
  module Formatters
    class Appd < Formatters::Base

      cli_name(:appd)

      def resource_completed(resource)
        puts "OK!"
        super
      end
    end
  end
end