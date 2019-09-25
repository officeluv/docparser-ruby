require "docparser/version"

module Docparser
  class Error < StandardError; end

  def self.api_key=(key)
    @api_key = key
  end

  def self.api_key
    @api_key || ENV['DOCPARSER_API_KEY']
  end
  
end
