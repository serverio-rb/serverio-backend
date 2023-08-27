# frozen_string_literal: true

require 'sinatra'
require 'yaml'
require 'json'

require_relative 'model/state'
require_relative 'info/os'
require_relative 'info/arch'
require_relative 'info/host'
require_relative 'info/kernel'
require_relative 'info/uptime'

module Serverio
  class Server < ::Sinatra::Base
    before do
      content_type :json
    end

    # curl -X GET host/state
    get '/state' do
      ::Serverio::State.new(
        ::Serverio::OS.new,
        ::Serverio::Arch.new,
        ::Serverio::Host.new,
        ::Serverio::Kernel.new,
        ::Serverio::Uptime.new
      ).to_map.to_json
    end
  end
end
