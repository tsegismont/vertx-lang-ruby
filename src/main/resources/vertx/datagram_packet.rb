require 'vertx/buffer'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramPacket
module Vertx
  #  A received datagram packet (UDP) which contains the data and information about the sender of the data itself.
  class DatagramPacket
    # @private
    # @param j_del [::Vertx::DatagramPacket] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::DatagramPacket] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == DatagramPacket
    end
    def @@j_api_type.wrap(obj)
      DatagramPacket.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreDatagram::DatagramPacket.java_class
    end
    #  Returns the {::Vertx::SocketAddress} of the sender that sent
    #  this {::Vertx::DatagramPacket}.
    # @return [::Vertx::SocketAddress] the address of the sender
    def sender
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:sender, []).call(),::Vertx::SocketAddress)
      end
      raise ArgumentError, "Invalid arguments when calling sender()"
    end
    #  Returns the data of the {::Vertx::DatagramPacket}
    # @return [::Vertx::Buffer] the data
    def data
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:data, []).call(),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling data()"
    end
  end
end
