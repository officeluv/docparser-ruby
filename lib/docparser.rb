# frozen_string_literal: true

# typed: true
require './docparser/version'

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

    def initialize; end
  end

  class Parser
    extend T::Sig

    def initialize; end

    def find_all; end

    def find_by_name; end
  end

  class Client
    extend T::Sig

    BASE_URL = 'https://api.docparser.com/v1'
    FILE_PREFIX = 'https:'
    attr_reader :api_key

    sig { params(api_key: String).void }
    def initialize(api_key)
      @api_key = T.let(api_key, String)
    end

    def fetch_parsers; end

    private

    sig { returns(Hash) }
    def default_headers
      {
        params: {
          api_key: api_key
        }
      }
    end

    sig { params(resource: String).returns(JSON) }
    def fetch(_resource)
      url = "#{BASE_URL}/parsers"
      url = URI(url.to_s)
      http = Net::HTTP.new(url.host, url.port)
      request = Net::HTTP::Get.new(url)
      request['api_key'] = api_key.to_s
      begin
        response = http.request(request)
        JSON.parse(response)
      rescue StandardError
        false
      end
    end
  end
end
