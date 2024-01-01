# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## 0.8.0 (August 28th, 2023)

### Added

* Allow SQLite query parameters and support cached databases ([#561][#561])
* Support for unix socket for aiomysql and asyncmy ([#551][#551])

[#551]: https://github.com/encode/databases/pull/551
[#561]: https://github.com/encode/databases/pull/546

### Changed

* Change isolation connections and transactions during concurrent usage ([#546][#546])
* Bump requests from 2.28.1 to 2.31.0 ([#562][#562])
* Bump starlette from 0.20.4 to 0.27.0 ([#560][#560])
* Bump up asyncmy version to fix `No module named 'asyncmy.connection'` ([#553][#553])
* Bump wheel from 0.37.1 to 0.38.1 ([#524][#524])

[#546]: https://github.com/encode/databases/pull/546
[#562]: https://github.com/encode/databases/pull/562
[#560]: https://github.com/encode/databases/pull/560
[#553]: https://github.com/encode/databases/pull/553
[#524]: https://github.com/encode/databases/pull/524

### Fixed

* Fix the type-hints using more standard mode ([#526][#526])

[#526]: https://github.com/encode/databases/pull/526
