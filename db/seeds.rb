# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.create!(email: "kev03@gmail.com", password: "totooo")
#user1 = User.create!(email: "angelina@gmail.com", password: "totooo")

Castle.destroy_all

castle = Castle.create!(name: "Chambord", description: "Le plus grand château de la Loire!", address: "Le Château, 41250 CHAMBORD", price: 1500, user: user)


#Review.destroy_all

#Review.create!(rating: 5, comment: "Un très beau séjour, à recommander!", castle: castle)
