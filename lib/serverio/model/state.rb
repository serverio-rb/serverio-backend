# frozen_string_literal: true

module Serverio
  class State
    # @param {String} os
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
        'os' => @os,
        'arch' => @arch,
        'host' => @host,
        'kernel' => @kernel,
        'uptime' => @uptime,
      }
    end
  end
end
