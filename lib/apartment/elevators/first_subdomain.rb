module Apartment
  module Elevators
    # Provides a rack based db switching solution based on subdomains
    # Assumes that database name should match subdomain
    class FirstSubdomain < Subdomain

      def subdomain(request)
        super(request).match(/(\w+)(\.\w+)?/)[1]
      end

    end
  end
end