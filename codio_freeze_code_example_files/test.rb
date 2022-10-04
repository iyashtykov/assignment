# FREEZE CODE BEGIN

module Azure
  module Blob
    class Blob
 # FREEZE CODE END     
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

