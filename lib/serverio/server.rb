# frozen_string_literal: true

require 'sinatra'
require 'yaml'
require 'json'

require_relative 'model/state'

module Serverio
  class Server < ::Sinatra::Base
    before do
      content_type :json
    end

    # curl -X GET host/state
    get '/state' do
      ::Serverio::State.new(
        `hostnamectl | grep 'Operating System' | cut -f2 -d ":"`,
        `hostnamectl | grep 'Architecture' | cut -f2 -d ":"`,
        `hostname`,
        `hostnamectl | grep 'Kernel' | cut -f2 -d ":"`,
        `uptime -p`
      ).to_map.to_json
    end
  end
end
