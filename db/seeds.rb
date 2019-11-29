# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# ----- DESTROY TABLES -----
User.destroy_all
Category.destroy_all
Piece.destroy_all

# ----- ACCOUNTS TEST -----
test_account = User.new()
test_account.email = 'azert@gmail.com'
test_account.password = 'password'
test_account.password_confirmation = 'password'
test_account.save!

louis_account = User.new()
louis_account.email = 'louis@gmail.com'
louis_account.password = 'password'
louis_account.password_confirmation = 'password'
louis_account.save!

puts "#{User.count} account created"

peinture = Category.create!(name: "peinture")
sculpture = Category.create!(name: "sculpture")

puts "#{Category.count} categories created"

piece1 = Piece.create!(
    title:            "Joconde",
    artist:           "Leonard De Vinci",
    year:             "1503",
    category:         peinture,
    description:      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    price:            Faker::Number.between(from: 1000, to: 200000),
    address:          "Paris",
    user:             test_account,
    remote_photo_url:     "https://cdn-media.rtl.fr/cache/YNNWINErjzA1UcLORGU3Tw/880v587-0/online/image/2019/1022/7799303706_la-joconde-de-leonard-de-vinci-exposee-au-musee-du-louvre-a-paris.jpg"
  )

piece2 = Piece.create!(
    title:            "Vague de Kanagawa",
    artist:           "Hokusai",
    year:             "1830",
    category:         peinture,
    description:      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    price:            Faker::Number.between(from: 1000, to: 200000),
    address:          "Marseille",
    user:             louis_account,
    remote_photo_url: "https://www.usinenouvelle.com/mediatheque/0/0/3/000734300_image_896x598/vague-d-hokusai.jpg")

piece3 = Piece.create!(
    title:              "David",
    artist:             "Michel Ange",
    year:               "1503",
    category:           sculpture,
    description:        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    price:              Faker::Number.between(from: 1000, to: 200000),
    address:            "Toulon",
    user:               louis_account,
    remote_photo_url:   "https://img.lemde.fr/2014/05/05/0/0/512/256/1440/720/60/0/ill_4411793_7c75_florence_-_michelangelos_-david-_2929585347_.jpg"
  )

piece4 = Piece.create!(
    title:            "Penseur de Rodin",
    artist:           "Auguste Rodin",
    year:             "1880",
    category:         sculpture,
    description:      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    price:            Faker::Number.between(from: 1000, to: 200000),
    address:          "Lyon",
    user:             test_account,
    remote_photo_url: "https://cdn2.nextinpact.com/compress/900-435/images/bd/wide-linked-media/23259.jpg"
  )

piece5 = Piece.create!(
    title:            "Guernica",
    artist:           "Picasso",
    year:             "1937",
    category:         peinture,
    description:      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    price:            Faker::Number.between(from: 1000, to: 200000),
    address:          "Lille",
    user:             test_account,
    remote_photo_url: "https://www.francetvinfo.fr/image/75ipquo92-0c4d/578/325/18971887.jpg"
  )

piece6 = Piece.create!(
    title:            "La nuit étoilé",
    artist:           "Vincent Van Gogh",
    year:             "1889",
    category:         peinture,
    description:      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
    price:            Faker::Number.between(from: 1000, to: 200000),
    address:          "Bordeaux",
    user:             louis_account,
    remote_photo_url: "http://www.ac-grenoble.fr/ecoles/g5/local/cache-vignettes/L500xH408/may-stary-night1-ead2a.png"
  )

puts "#{Piece.count} pieces created"

