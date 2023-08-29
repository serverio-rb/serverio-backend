# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/namespace'
require 'yaml'
require 'json'

require_relative 'info/os'
require_relative 'info/arch'
require_relative 'info/host'
require_relative 'info/kernel'
require_relative 'info/uptime'
require_relative 'model/state'
require_relative 'model/state_mapper'

module Serverio
  class Server < ::Sinatra::Base
    register ::Sinatra::Namespace

    before do
      content_type :json
    end

    namespace '/api' do
      namespace '/v1' do
        # curl -X GET host/api/v1/state
        get '/state' do
          ::Serverio::StateMapper.new(
            state: ::Serverio::State.new(
              os: ::Serverio::OS.new,
              arch: ::Serverio::Arch.new,
              host: ::Serverio::Host.new,
              kernel: ::Serverio::Kernel.new,
              uptime: ::Serverio::Uptime.new
            )
          ).json
        end
      end
    end
  end
end
