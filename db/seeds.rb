# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Load.create(container_size: '30 meters', origin: 'Staten Island NY', destination: 'Elizabeth NJ', price: 100, pickup_time: '2:00 AM', dropoff_time: '5:00 AM', pickup_date: '9/29/2021', dropoff_date: '9/29/2021',  shipper: Shipper.first)

Load.create(container_size: '30 meters', origin: 'Staten Island NY', destination: 'Elizabeth NJ', price: 100, pickup_time: '2:00 AM', dropoff_time: '5:00 AM', pickup_date: '9/29/2021', dropoff_date: '9/29/2021',  shipper: Shipper.find_by_id(2))