# frozen_string_literal: true

describe ::Serverio::Server do
  include Rack::Test::Methods

  let(:app) { described_class.new }

  context '/api/v1/state' do
    let(:response) { get '/api/v1/state' }

    it '🧪 Returns status 200 OK' do
      expect(response.status).to eq 200
      expect(response.body).to_not be_nil
    end
  end
end
