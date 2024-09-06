# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2024-09-05

### Added
- Implemented `fetch_queued_image` method in `ModelsLab::Images` class

## [0.1.1] - 2024-08-23

### Changed
- Updated Faraday dependency to version 2.0

## [0.1.0] - 2024-08-22

### Added
- Initial release of the ModelsLab Ruby gem
- Implemented `ModelsLab::Client` class for interacting with the ModelsLab API
- Added `ModelsLab::Images` class with `text2img` method for generating images from text prompts
- Implemented configuration system for setting API key
- Added support for passing additional options to the `text2img` method
- Included basic error handling and response parsing
- Created README.md with installation instructions and usage examples
- Added this CHANGELOG.md to track changes between releases

### Changed
- N/A

### Deprecated
- N/A

### Removed
- N/A

### Fixed
- N/A

### Security
- N/A
