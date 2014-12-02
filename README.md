# Playmobil

TODO: Write a gem description

## Installation

Install dependencies

```
brew install libffi gtk+
brew install gstreamer gst-plugins-base gst-libav gst-plugins-good gst-plugins-ugly
XCFLAGS="-fPIC" brew install rtmpdump
XCFLAGS="-fPIC" brew install --build-from-source -v gst-plugins-bad --with-rtmpdump --with-faac --with-faad2 --with-libdvdread --with-libexif --with-gnutls
```

Add this line to your application's Gemfile:

```ruby
gem 'playmobil'
```

And then execute:

    $ PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig bundle

Or install it yourself as:

    $ PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig gem install playmobil

## Usage

```
bundle exec ./bin/playmobil
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/playmobil/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
