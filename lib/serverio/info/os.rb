# frozen_string_literal: true

require_relative 'base_info'

module Serverio
  class OS < ::Serverio::BaseInfo
    def print
      `hostnamectl | grep 'Operating System' | cut -f2 -d ":"`.strip
    end
  end
end
