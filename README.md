# serverio-rb

## About

Track your home server status by simple API.

## Methods

### `/state`

Will return state of your server.

#### Call

```shell
$ curl -X GET 'host/state'
```

#### Result

```json
{
  "os": " Ubuntu 22.04.2 LTS",
  "arch": " x86-64",
  "host": "host",
  "kernel": "Kernel",
  "uptime": "up 5 days, 1 hour, 39 minutes"
}
```

## How to use

You need [Ruby](https://www.ruby-lang.org) and [bundle](https://bundler.io) for start.

1. Clone `serverio-rb` to your server:

```shell
$ git clone https://github.com/serverio-rb/serverio-rb
```

2. From `serverio-rb` directory run `bundle` to install dependencies:

```shell
$ bundle install
```

3. Run `serverio-rb`:

```shell
$ rackup --host 0.0.0.0 --port 9292
```

4. Go to [serverio_rb_flutter](https://github.com/serverio-rb/serverio_rb_flutter) for client or use `curl` (or
   alternatives) to track your server status.
