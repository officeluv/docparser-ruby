# typed: true
require "./docparser/version"

module Docparser
  class Error < StandardError; end
  extend T::Sig

  sig { params(key: String).void }
  def self.api_key=(key)
    @api_key = key
  end

  sig { returns(String) }
  def self.api_key
    @api_key || ENV['DOCPARSER_API_KEY']
  end



  class Document
    extend T::Sig
    def initialize()
    end

  end

  class Parser
    # extend T::Sig 
    def initialize()
    end
  end
  
end