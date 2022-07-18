# CODIO SOLUTION BEGIN
#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
#--------------------------------------------------------------------------

module Azure
  module Blob
    class Blob
      
      def initialize
        @properties = {}
        @metadata = {}
        yield self if block_given?
      end

      attr_accessor :name
      attr_accessor :snapshot
      attr_accessor :properties
      attr_accessor :metadata
    end
  end
  end
# CODIO SOLUTION END
