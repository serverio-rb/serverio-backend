# frozen_string_literal: true

require 'dry-struct'
require 'dry-types'

require_relative '../info/base_info'

module Types
  include ::Dry.Types
end

module Serverio
  class State < ::Dry::Struct
    attribute :os, Types.Instance(::Serverio::BaseInfo)
    attribute :arch, Types.Instance(::Serverio::BaseInfo)
    attribute :host, Types.Instance(::Serverio::BaseInfo)
    attribute :kernel, Types.Instance(::Serverio::BaseInfo)
    attribute :uptime, Types.Instance(::Serverio::BaseInfo)
  end
end
