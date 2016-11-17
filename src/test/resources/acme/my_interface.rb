require 'acme/sub_interface'
require 'testmodel/test_interface'
require 'vertx/util/utils.rb'
# Generated from com.acme.pkg.MyInterface
module Acme
  class MyInterface
    # @private
    # @param j_del [::Acme::MyInterface] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Acme::MyInterface] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == MyInterface
    end
    def @@j_api_type.wrap(obj)
      MyInterface.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::ComAcmePkg::MyInterface.java_class
    end
    # @return [::Acme::MyInterface]
    def self.create
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::ComAcmePkg::MyInterface.java_method(:create, []).call(),::Acme::MyInterface)
      end
      raise ArgumentError, "Invalid arguments when calling create()"
    end
    # @return [::Acme::SubInterface]
    def sub
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:sub, []).call(),::Acme::SubInterface)
      end
      raise ArgumentError, "Invalid arguments when calling sub()"
    end
    # @return [::Testmodel::TestInterface]
    def method
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:method, []).call(),::Testmodel::TestInterface)
      end
      raise ArgumentError, "Invalid arguments when calling method()"
    end
  end
end
