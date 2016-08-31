# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
r1 = Route.create(name: "Six Flags")

s1 = Stop.create(stop_name: "A", order: 1, route_id: 1)
s2 = Stop.create(stop_name: "B", order: 2, route_id: 1)
s3 = Stop.create(stop_name: "C", order: 3, route_id: 1)
s4 = Stop.create(stop_name: "D", order: 4, route_id: 1)
