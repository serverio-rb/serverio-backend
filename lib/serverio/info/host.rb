# frozen_string_literal: true

require_relative 'base_info'

module Serverio
  class Host < ::Serverio::BaseInfo
    def print
      `hostname`
    end
  end
end
