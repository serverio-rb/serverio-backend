# frozen_string_literal: true

require_relative 'base_info'

module Serverio
  class Arch < ::Serverio::BaseInfo
    def print
      `hostnamectl | grep 'Architecture' | cut -f2 -d ":"`.strip
    end
  end
end
