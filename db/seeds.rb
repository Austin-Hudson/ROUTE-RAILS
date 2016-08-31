# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
r1 = Route.create(name: "Six Flags", shortest_path: "A | B | C | D");
r1 = Route.create(name: "Mall", shortest_path: "E| G | R | Y");
