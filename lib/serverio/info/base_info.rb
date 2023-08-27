# frozen_string_literal: true

module Serverio
  class BaseInfo
    NO_IMPL_ERROR = 'No implement.'

    def print
      raise NO_IMPL_ERROR
    end
  end
end
