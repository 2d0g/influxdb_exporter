## ?.?.? / unreleased

* [CHANGE] Do not run as root in the Docker container by default ([#40](https://github.com/prometheus/influxdb_exporter/pull/40))

## 0.2.0 / 2019-02-28

* [CHANGE] Switch to Kingpin flag library ([#14](https://github.com/prometheus/influxdb_exporter/pull/14))
* [FEATURE] Optionally export samples with timestamp ([#36](https://github.com/prometheus/influxdb_exporter/pull/36))

For consistency with other Prometheus projects, the exporter now expects
POSIX-ish flag semantics. Use single dashes for short options (`-h`) and two
dashes for long options (`--help`).

## 0.1.0 / 2017-07-26

Initial release.
