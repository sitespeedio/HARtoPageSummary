# CHANGELOG - PageXray

## Unreleased
### Fixed
* Fix expires and timeSinceLastModified parsing for invalid dates.

version 1.0.0 2017-08-26
------------------------
### Added
* You can now run PageXray in the browser! Check Github releases to download that version.
* If the HAR is generated with sitespeed.io > 5.4.3, we pickup some extra meta data: connection type, URL to the result page, URL to the video, URL to the screenshot. And we also add the browser and version if that is availible.
* Pickup firstParty/thirdParty config from the HAR, override with config.
* Collect timings per domain. 
* Collect timings per timing type instead of total. This change is not backward compatible and you need to calculate the total yourself.

version 0.14.3 2017-06-23
------------------------
### Fixed
* Collect assets that have 2XX status code instead of just strict 200. Thanks @vio for the PR.

version 0.14.2 2017-05-16
------------------------
### Fixed
* Calculating timing for an assets included both SSL and Connect time, that is wrong since connect time includes SSL time.

version 0.14.1 2016-12-05
------------------------
### Fixed
* Making sure default content types values exist even if they don't

version 0.14.0 2016-11-27
------------------------
### Added
* Added breakdown for first vs third party asset content types

version 0.13.1 2016-10-17
------------------------
### Fixed
* documentRedirects should be 0 when there's no redirects (not -1).
* Match fonts from Google Fonts.

version 0.13.0 2016-09-22
------------------------
### Added
* Collect number of responses missing compression (that can be compressed)

### Fixed
* Get cookies from the request instead of the response (great @tobli!)

version 0.12.0 2016-09-14
------------------------
### Added
* Collect cookie stats for a page (max/min median etc)
* Collect cookie stats for first vs third parties

version 0.11.0 2016-09-12
------------------------
### Added
* Collect total download time for each response
* Collect number of cookies per asset

version 0.10.0 2016-09-01
------------------------
### Changed
* Internal: We moved to airbnb eslint style rules.

### Added
* Collect total number of domains in totalDomain.

version 0.9.0 - 2016-05-20
------------------------
### Changed
* Always report default content types (html, css, javascript etc) + add others. Before we only added the types that was in the HAR.

* Make sure content size is > -1 (sometimes Firefox HAR have assets that are -1 in size).

version 0.8.0 - 2016-05-15
------------------------
### Changed
Even cleaner structure for first party vs third party assets.

version 0.7.0 - 2016-05-15
------------------------
### Changed
New structure for domains to be able to support 1st vs 3rd party assets. Supply a regex for 1st party domains and you will get stats for 1st vs 3rd.

version 0.6.0 - 2016-04-18
------------------------
### Fixed
* Fix content type matching for JSON.

### Changed
* Renamed 'others' content type to 'other' for consistency.

version 0.5.0 - 2016-04-17
------------------------
### Changed
* New name new game. The project is now known as project PageXray.

version 0.4.0 - 2016-04-12
------------------------
### Added
* Collect the full redirect chain

version 0.3.8 - 2016-03-02
------------------------
### Fixed
* Removed console log.

version 0.3.7 - 2016-03-02
------------------------
### Fixed
* Create statistics per page instead of take stats for all pages.
