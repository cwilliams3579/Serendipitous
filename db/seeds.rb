# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(first_name: 'Tom', last_name: 'Hanks',  email: 'tom@gmail.com', password: "password")
User.create!(first_name: 'Sponge', last_name: 'Bob',  email: 'sponge@gmail.com', password: "password")
User.create!(first_name: 'Steve', last_name: 'Austin',  email: 'steve@gmail.com', password: "password")
User.create!(first_name: 'Pac', last_name: 'Man',  email: 'pac@gmail.com', password: "password")
User.create!(first_name: 'Tupac', last_name: 'Shakur',  email: 'tupac@gmail.com', password: "password")
