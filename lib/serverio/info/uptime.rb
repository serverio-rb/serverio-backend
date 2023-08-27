# frozen_string_literal: true

require_relative 'base_info'

module Serverio
  class Uptime < ::Serverio::BaseInfo
    def print
      `uptime -p`
    end
  end
end
