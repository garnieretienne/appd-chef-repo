class Chef
  module Formatters
    class Appd < Formatters::Base

      def resource_completed(resource)
        puts "OK!"
        super
      end
    end
  end
end