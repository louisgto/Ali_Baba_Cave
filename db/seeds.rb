# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Piece.destroy_all

test_account = User.new()
test_account.email = 'azert@gmail.com'
test_account.password = 'password'
test_account.password_confirmation = 'password'
test_account.save!

Category.create(name: "peinture")
Category.create(name: "sculpture")

# Piece.create(title: "Joconde", artist: "Leonard De Vinci",
#               year: "1503", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
#               price: "1000", category_id: "peinture")
