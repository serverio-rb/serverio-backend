# frozen_string_literal: true

describe ::Serverio::State do
  it '🧪 Returns valid state instance' do
    state = described_class.new(
      os: ::Serverio::OS.new,
      arch: ::Serverio::Arch.new,
      host: ::Serverio::Host.new,
      kernel: ::Serverio::Kernel.new,
      uptime: ::Serverio::Uptime.new
    )

    expect(state.nil?).to eq(false)
  end

  it '🧪 Causes an error when creating invalid instance' do
    expect do
      described_class.new(
        os: '',
        arch: ::Serverio::Arch.new,
        host: ::Serverio::Host.new,
        kernel: ::Serverio::Kernel.new,
        uptime: ::Serverio::Uptime.new
      )
    end.to raise_error(::Dry::Struct::Error)
  end
end
