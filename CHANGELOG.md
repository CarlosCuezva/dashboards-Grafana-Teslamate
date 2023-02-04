# Changelog

## [1.13.4] - 2023-02-04

### Dashboards

- Battery Health: Battery degradation calculation improvements
- Battery Health: Added support to miles
- Overview v2: Always shows the last recorded tire pressure

## [1.13.3] - 2023-02-01

### Dashboards

- Charging Costs Stats: Changed initial data range
- Current Charge View: The "Energy added" panel has been split into "Added in period" and "Added in session"

### Improvements

- Dashboards.sh: Increased platform independence
- Dashboards.sh: Added defaults values and checked if API KEY of Grafana is empty (#11 - @Starmixcraft)

## [1.13.2] - 2023-01-30

### Dashboards

- Current Charge View: Auto-refresh every 30 seconds
- Current Charge View: Fixed bug in "Elapsed time" when there are 2 or more recharges in the selected period

## [1.13.1] - 2023-01-30

### Dashboards

- Current Charge View: Fixed bug when there are 2 or more recharges in the selected period (Issue #9).

### Other changes

- Improvements in dashboards.sh

## [1.13.0] - 2023-01-30

### Dashboards

- Charging Curves: Unified ranges in the graphs to be able to compare better.
- Charging Curves: Added maximum and minimum power value of the charger.

### Other changes

- New system to download the latest stable version of the dashboards and install them
- Updated readme file with instructions for the new installation system
- Updated screenshots

## [1.12.0] - 2023-01-27

### Dashboards

- Charging Curves: Added option to filter recharges with a minimum maximum power in the DC charging curve
- Charging Costs Stats: Added panel "Cost per years"
- Overview v2: Renamed dashboard

### Other changes

- Updated readme
- Updated screenshots

## [1.11.1] - 2023-01-25

### Dashboards

- Battery Health: Improvements in max_range query

### Other changes

- Updated readme file with new instructions
- dashboards.sh: Removed dependency of jq program

## [1.11.0] - 2023-01-22

### Dashboards

- Battery Health: Added "Current Capacity" panel
- Battery Health: Battery degradation calculation improvements
- Battery Health: Reorganization of the panels
- Charging Costs Stats: Added "Energy used to recharge", "Energy added" and "Recharging efficiency" panels
- Charging Costs Stats: Added link in the "_Costs_" column in the "Stats per month" table

## [1.10.0] - 2023-01-20

### Dashboards

- Charging Curves: Added panels "Max power per recharge" and "Fast charging networks"

## [1.9.0] - 2023-01-19

### Dashboards

- Overview: Added "Current location" and "Tire pressure" panels
- Battery Health: More optimized queries

## [1.8.0] - 2023-01-19

### Dashboards

- Charging Costs Stats: Added "Cost per months"  panel
- Charging Costs Stats: Change _dateTimeAsLocal_ to _dateTimeAsSystem_. ([Original request](https://github.com/adriankumpf/teslamate/discussions/3052) - @rikardronnkvist)
- Battery Health: Optimized queries

### Other changes

- Simplified json files
- Update screenshots

## [1.7.0] - 2023-01-18

### Dashboards

- Charging Costs Stats: Added "Cost per month" and "Energy recharged per month" panels

### Other changes

- Simplified json files
- Added dropdown menu to access all custom dashboards

## [1.6.1] - 2023-01-15

### Improvements

- Removed the € symbol as a currency
- Added support to km/mi

### Bug Fixes

- Battery Health: Fixed dashboard when Teslamate is set to miles

## [1.6.0] - 2023-01-14

### Dashboards

- Battery Health: New

### Improvements

- Reordered screenshots section

## [1.5.1] - 2023-01-14

### Improvements and Bug Fixes

- Updated the filter for superchargers or not.
- Checked dashboard with Teslamate 1.27.2 and Grafana 8.5.15.

## [1.5.0] - 2023-01-12

### Improvements

- Created script to automatically import dashboards.
- Updated readme file with new instructions

## [1.4.0] - 2023-01-03

### Improvements

- Charging Costs Stats: Updated main table appearance and added currency symbol (#4 - @jheredianet)
- Charging Tops: Added more panels, defaults value when there is no value

### Bug Fixes

- Charging Tops: It's counted as a charge if it ends within the selected period

## [1.3.2] - 2023-01-03

### Bug Fixes

- Charging Costs Stats: Fixed error when exporting the JSON

## [1.3.1] - 2023-01-03

### Bug Fixes

- Charging Costs Stats: Optimized some queries

## [1.3.0] - 2023-01-03

### New dashboard

- Charging Costs Stats

## [1.2.1] - 2022-12-29

### Bug Fixes

- Charging Tops: Fixed "datasource" variable
- Current Charge View: Fixed "datasource" variable

## [1.2.0] - 2022-12-29

### Improvements

- Charging Tops: Added new panels

## [1.1.1] - 2022-12-22

### Bug Fixes

- Current Charge View: Fix query of "Energy Added" panel

## [1.1.0] - 2022-12-20

### New dashboards

- Current Charge View

## [1.0.0] - 2022-12-19

[1.13.4]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.13.3...v1.13.4
[1.13.3]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.13.2...v1.13.3
[1.13.2]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.13.1...v1.13.2
[1.13.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.13.0...v1.13.1
[1.13.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.12.0...v1.13.0
[1.12.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.11.1...v1.12.0
[1.11.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.11.0...v1.11.1
[1.11.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.10.0...v1.11.0
[1.10.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.9.0...v1.10.0
[1.9.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.8.0...v1.9.0
[1.8.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.7.0...v1.8.0
[1.7.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.6.1...v1.7.0
[1.6.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.6.0...v1.6.1
[1.6.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.5.1...v1.6.0
[1.5.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.5.0...v1.5.1
[1.5.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.4.0...v1.5.0
[1.4.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.3.2...v1.4.0
[1.3.2]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.3.1...v1.3.2
[1.3.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.2.1...v1.3.0
[1.2.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.0.0...v1.1.0