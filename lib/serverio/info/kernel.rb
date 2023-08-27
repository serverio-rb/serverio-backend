# frozen_string_literal: true

require_relative 'base_info'

module Serverio
  class Kernel < ::Serverio::BaseInfo
    def print
      `hostnamectl | grep 'Kernel' | cut -f2 -d ":"`.strip
    end
  end
end
