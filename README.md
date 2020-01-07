# collectd-server

A simple collectd installation to just receive metrics from network. Only `network` and `rrdtool` plugins are enabled.

Run as:

```bash
$ mkdir collectd-data && chmod 1777 collectd-data
$ docker run -v ./collectd-data:/var/lib/collectd -p 25826:25826/udp euronetzrt/collectd-server
```
