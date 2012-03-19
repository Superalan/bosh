# Copyright (c) 2009-2012 VMware, Inc.

module Bosh::AWSCloud
  ##
  #
  class DynamicNetwork < Network

    ##
    # Creates a new dynamic network
    #
    # @param [String] name Network name
    # @param [Hash] spec Raw network spec
    def initialize(name, spec)
      super
    end

    ##
    # Configures EC2 dynamic network. Right now it's a no-op,
    # as dynamic networks are completely managed by EC2
    # @param [AWS:EC2] instance EC2 client
    # @param [AWS::EC2::Instance] EC2 instance to configure
    def configure(ec2, instance)
      if @ip
        cloud_error("Static IP provided for dynamic network")
      end
    end

  end
end

