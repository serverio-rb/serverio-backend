# frozen_string_literal: true

describe ::Serverio::StateMapper do
  it '🧪 Returns valid state instance' do
    state_mapper = described_class.new(
      state: ::Serverio::State.new(
        os: ::Serverio::OS.new,
        arch: ::Serverio::Arch.new,
        host: ::Serverio::Host.new,
        kernel: ::Serverio::Kernel.new,
        uptime: ::Serverio::Uptime.new
      )
    )

    expect(state_mapper).to_not be_nil
  end

  it '🧪 Causes an error when creating invalid instance' do
    expect do
      described_class.new(state: '')
    end.to raise_error(::Dry::Struct::Error)
  end

  it '🧪 Returns valid JSON from valid instance' do
    json = described_class.new(
      state: ::Serverio::State.new(
        os: ::Serverio::OS.new,
        arch: ::Serverio::Arch.new,
        host: ::Serverio::Host.new,
        kernel: ::Serverio::Kernel.new,
        uptime: ::Serverio::Uptime.new
      )
    ).json

    expect(json).to be_a ::String
  end
end
