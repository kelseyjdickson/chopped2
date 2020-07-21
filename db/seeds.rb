# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rating.destroy_all
Diner.destroy_all
puts"All DESTROYED!"
puts "Starts seeding"

diner = Diner.create([
    {
        name: "Joe's Diner",
        borough: "Brooklyn"
    },
    {
        name: "Classy Diner",
        borough: "New York City"
    },
    {
        name: "Astoria Diner",
        borough: "Queens"
    }
])




ratings = Rating.create([
    {
        num_of_stars: 5,
        rating: "Best coffee Ever!!!!!!",
        diner_id: Diner.first.id
       
    },
    {
        num_of_stars:3,
        rating: "Soggy bread",
        diner_id: Diner.first.id
      
    },
    {
        num_of_stars:1,
        rating: "Best french fries",
        diner_id: Diner.last.id
      
    }
])










puts "Done seeding!"