WIP!

An example of how to run a phoenix app using [dockerized Elixir](https://github.com/joakimk/rpi-elixir) on a Raspberry Pi.

## How to run

Just put [an OS with docker](http://blog.hypriot.com/downloads/) on it's memory card, run `docker run joakimk/rpi-elixir-phoenix-app-example` and visit <http://your-raspberry-pi-ip:4000> and you should see something like:

TODO!

## About

* Built on [rpi-elixir](https://github.com/joakimk/rpi-elixir).
* Dockerizes [chrismccord/phoenix_chat_example](https://github.com/chrismccord/phoenix_chat_example)

## Building

This takes ? minutes on a Raspberry Pi 2.

    make

## Publishing

    docker tag 5555555555 joakimk/rpi-elixir-phoenix-app-example:latest

    docker login

    # This takes about a minute:
    docker push joakimk/rpi-elixir-phoenix-app-example:latest

## License

Copyright (c) 2015 [Joakim Kolsjö](https://twitter.com/joakimk)

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
