# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
restaurant = Restaurant.create({ name: 'Le Ritz', address: '31 rue des Poilus', phone_number: '06etc.', category: 'french' })
Restaurant.create({ name: 'La tour d\'or', address: '31 rue des Tulipes', phone_number: '06etc.', category: 'french' })

r = Review.new({ rating: 4, content: 'I would recommend it anytime' })
r.restaurant = restaurant
r.save!
