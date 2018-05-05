# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

potlucks = PotluckEvent.create([
             {
               name: 'Bible Study',
               location: '123 Fake St',
               location_nickname: 'Chris House',
               date: DateTime.now
             },
             {
               name: 'Church',
               location: '456 Fake St',
               location_nickname: 'Methodist Church',
               date: DateTime.now + 5
             }
           ])

dishes = Dish.create([
           {
             name: 'kung pow chicken',
             quantity: '7',
             potluck_event: PotluckEvent.first
           }
  ])
