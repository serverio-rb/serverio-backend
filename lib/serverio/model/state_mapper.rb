# frozen_string_literal: true

require 'json'

require 'dry-struct'
require 'dry-types'

require_relative 'state'

module Types
  include ::Dry.Types
end

module Serverio
  class StateMapper < ::Dry::Struct
    attribute :state, Types.Instance(::Serverio::State)

    # @return {Map}
    def json
      {
        'os' => state.os.print,
        'arch' => state.arch.print,
        'host' => state.host.print,
        'kernel' => state.kernel.print,
        'uptime' => state.uptime.print
      }.to_json
    end
  end
end
