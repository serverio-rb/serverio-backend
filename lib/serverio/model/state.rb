# frozen_string_literal: true

require_relative '../info/base_info'

module Serverio
  class State
    # @param {BaseInfo} os
    # @param {String} arch
    # @param {String} host
    # @param {String} kernel
    # @param {String} uptime
    # @param {String} ruby
    def initialize(os, arch, host, kernel, uptime)
      @os = os
      @arch = arch
      @host = host
      @kernel = kernel
      @uptime = uptime
    end

    # @return {Map}
    def to_map
      {
        'os' => @os.print,
        'arch' => @arch.print,
        'host' => @host.print,
        'kernel' => @kernel.print,
        'uptime' => @uptime.print
      }
    end
  end
end
