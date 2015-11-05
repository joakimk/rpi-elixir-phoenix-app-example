An example of how to run a phoenix app using [dockerized Elixir](https://github.com/joakimk/rpi-elixir) on a Raspberry Pi.

## How to run

Just put [an OS with docker](http://blog.hypriot.com/downloads/) on it's memory card, run `docker run -p 4000:4000 joakimk/rpi-elixir-phoenix-app-example` and visit <http://your-raspberry-pi-ip:4000> and you should see something like:

![](https://dl.dropboxusercontent.com/u/136929/github/rpi-elixir-phoenix.png)

## About

* Built on [rpi-elixir](https://github.com/joakimk/rpi-elixir).
* Dockerizes [chrismccord/phoenix_chat_example](https://github.com/chrismccord/phoenix_chat_example)

## Benchmark

Please do benchmarks! :). Would be fun to see how much a Pi running phoenix can handle. It can certainly respond quickly (~1ms).

A quick bench with 100 concurrent clients showed ~535 reqs/sec (32 000 RPM) for "GET" request to "/".

```
Concurrency Level:      100
Time taken for tests:   18.477 seconds
Complete requests:      10000
Failed requests:        0
Write errors:           0
Total transferred:      22100000 bytes
HTML transferred:       20240000 bytes
Requests per second:    541.21 [#/sec] (mean)
Time per request:       184.772 [ms] (mean)
Time per request:       1.848 [ms] (mean, across all concurrent requests)
Transfer rate:          1168.03 [Kbytes/sec] received
```

Would be interesting to know how many channel clients it could handle at a resonable level of service (1 second or less to broadcast to everyone).

## Building

This takes 15 minutes on a Raspberry Pi 2.

    make

There is probably quicker ways to run a phoenix app in docker, like mounting volumes, but for releasing it as a complete image that is about the time it takes unless you cache some dependencies (git, hex, rebar, maybe compiled dependencies) in a base image.

It's probably possible to compile the elixir code on another box and deploy it to the Pi as well.

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
