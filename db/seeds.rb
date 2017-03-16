# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'Guest', password: 'BarryAllenGuest')

movie1 = Movie.create(title: 'Forrest Gump',
                      director: 'Robert Zemeckis',
                      description: 'Great Movie',
                      rating: 5,
                      year: 1994,
                      image_url: 'http://2.bp.blogspot.com/-i03dWHqsKuY/Ucw2YpUKlOI/AAAAAAAAAFQ/NqfUh7pHZZQ/s1456/forrest-gump-poster-1994-tom-hanks.png'
                      )
