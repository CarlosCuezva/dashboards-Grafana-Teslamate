# Changelog

## [1.23.4.1] - 2024-06-23

- Overview v2: Solved max, min and thresholds with tires pressures in PSI
- Tire Pressure: Solved max, min and thresholds with tires pressures in PSI

## [1.23.4] - 2024-06-22

- Overview v2: Used gauge graph for tire pressure (#36 - @peterwillcn)
- Tire Pressure: Used gauge graph for tire pressure (#36 - @peterwillcn)
- dashboards.sh: Added option to install directly the downloaded dashboards

## [1.23.3] - 2023-11-26

- Charging Curves: Adapted the panel to the new version of Grafana
- Charging Curves: Add SuC condition

## [1.23.2] - 2023-06-09

- Charges v2: Revise query for charges dashboard to support null cost field (#20 - @M1kep)

## [1.23.1] - 2023-05-11

- Current Charge View: Enabled auto-refresh

## [1.23.0] - 2023-04-29

- dashboards.sh: Unified download and installation of all dashboards
- dashboards.sh: The installed version and the latest available release are displayed on the menu screen

## [1.22.0] - 2023-04-21

- Battery Health: Improved degradation calculation
- Battery Health: Removed timepicker
- Battery Health: Display of the degradation curve from the first data not between time periods
- Battery Health: Text changes
- Tire Pressure: Fixed bug when converting pressure to PSI
- Charging Costs Stats: Fixed calculation of total months

## [1.21.1] - 2023-04-14

### Dashboards

- Battery Health: Optimized queries
- Charges: Added color scale to recharge efficiency
- Tire Pressure: Revised queries so that they can't return a null value

## [1.21.0] - 2023-04-09

### Dashboards

- Charges v2: New dashboard derived from the original Teslamate dashboard with filter by load location, cost and charge type (AC/DC)
- Battery Health: Redesigned the dashboard and added new informative panels about the battery

## [1.20.0] - 2023-04-05

### Dashboards

- Battery Health: Added the calculation of complete battery recharge cycles
- Charging Curves: Changed panel title and adjusted heights
- Drive Tops: Redesigned the dashboard
- Current Charge View: Updated the color of the battery heater
- Locations: New dashboard derived from the original Teslamate dashboard with filtered data for each car
- Drives: New dashboard derived from the original Teslamate dashboard with support for MPGe if you set your Teslamate to miles and added new data

## [1.19.1] - 2023-03-31

### Dashboards

- Tire Pressure: Fixed display of values in bar/PSI
- Drive Tops: Fixed display of values between km and mi

## [1.19.0] - 2023-03-31

### Dashboards

- Drive Tops: The last 12 months are now displayed correctly and not those defined by the selected period
- Battery Health: Added period for the calculation of degradation
- States v2: Added timeline

## [1.18.0] - 2023-03-25

### Dashboards

- Drive Tops: Added maximum distance traveled with 100% battery
- Drive Tops: Improved average speed filter
- Drive Tops: Fixed aggregation issue on max distances traveled
- Charging Costs Stats: Improved display of expenses by month when there are several years of data

## [1.17.2] - 2023-03-20

### Dashboards

- Drive Tops: Fixed calculation of average speed between recharges
- Drive Tops: Added time filter to average speed panel

## [1.17.1] - 2023-03-18

### Dashboards

- Drive Tops: Filtered by minimum average speed
- Charging Costs Stats: Fixed the calculation of months

## [1.17.0] - 2023-03-08

### Dashboards

- Charging Tops: Added total data and averages of energy, time and cost
- States v2: Expanded version of the original Teslamate dashboard with "Parked in selected period (%)" panel
- States v2: Optimized dashboard for when there is more than a car

### Other changes

- Updated dropdown menu name with shortcut to custom dashboards

## [1.16.0] - 2023-03-03

### Dashboards

- Drive Tops: Added total average speed and of the last days driving
- All dashboards: Added dropdown menu to access all custom dashboards

### Other changes

- Added option to dashboards.sh to automatically download and install latest release
- Updated screenshots
- Updated readme

## [1.15.1] - 2023-02-23

### Dashboards

- Charging Tops: Added average recharge time and charged energy in DC stations
- Tire Pressures: Tire pressure on the last drive

### Other changes

- Updated screenshots
- Text corrections

## [1.15.0] - 2023-02-23

### Dashboards

- Tire Pressure: New dashboard

## [1.14.2] - 2023-02-07

### Dashboards

- Battery Health: Optimized dashboard for when there is more than 1 car
- Charging Costs Stats: Optimized dashboard for when there is more than 1 car
- Charging Curves: Optimized dashboard for when there is more than 1 car
- Charging Tops: Optimized dashboard for when there is more than 1 car
- Current Charge View: Optimized dashboard for when there is more than 1 car
- Drive Tops: Optimized dashboard for when there is more than 1 car
- Overview v2: Optimized dashboard for when there is more than 1 car

## [1.14.1] - 2023-02-07

### Dashboards

- Charging Costs Stats: Fixed division by 0

## [1.14.0] - 2023-02-07

### Dashboards

- Drive Tops: New dashboard

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

[1.23.4.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.23.4...v1.23.4.1
[1.23.4]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.23.3...v1.23.4
[1.23.3]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.23.2...v1.23.3
[1.23.2]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.23.1...v1.23.2
[1.23.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.23.0...v1.23.1
[1.23.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.22.0...v1.23.0
[1.22.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.21.1...v1.22.0
[1.21.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.21.0...v1.21.1
[1.21.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.20.0...v1.21.0
[1.20.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.19.1...v1.20.0
[1.19.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.19.0...v1.19.1
[1.19.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.18.0...v1.19.0
[1.18.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.17.2...v1.18.0
[1.17.2]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.17.1...v1.17.2
[1.17.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.17.0...v1.17.1
[1.17.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.16.0...v1.17.0
[1.16.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.15.1...v1.16.0
[1.15.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.15.0...v1.15.1
[1.15.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.14.2...v1.15.0
[1.14.2]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.14.1...v1.14.2
[1.14.1]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.14.0...v1.14.1
[1.14.0]: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/compare/v1.13.4...v1.14.0
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
