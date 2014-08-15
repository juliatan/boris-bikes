Boris Bikes
===========

The goal of this project was to introduce us to Object-Oriented Programming (OOP) and show us the very basics of Object-Oriented Design (OOD).

We creating a simple system for managing Boris Bikes in London. Our system keeps track of a number of docking stations and the bikes. It allows us to rent the bikes and return them. Occasionally the bikes will break and then they will be unavailable for rental. There will also be a garage to fix the bikes and a van to move the bikes between the stations and the garage.

<b>Classes</b>
- Person
- Bike
- Garage
- Station
- Van
- Errors

<b>Module</b>
- BikeContainer (used by Garage, Station and Van classes)

Objectives
----------

- Introduction to Object-Oriented Programming (OOP) and the basics of Object-Oriented Design (OOD)
- Introduction to test driven development using RSpec

Technologies used
-----------------

* Ruby
* RSpec

How to use
----------

```shell
git clone git@github.com:juliatan/boris-bikes.git
cd boris-bikes
irb
require './lib/boris_bikes'
```

Create new objects for each of the various classes and move bikes around the garages, stations and vans.

How to run tests
----------------

```shell
cd boris-bikes
rspec
```
