# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'test1', email: 'test1@gmail.com', password: 'testu1', password_confirmation: 'testu1')
User.create(username: 'test2', email: 'test2@gmail.com', password: 'testu2', password_confirmation: 'testu2')
User.create(username: 'test3', email: 'test3@gmail.com', password: 'testu3', password_confirmation: 'testu3')
User.create(username: 'test4', email: 'test4@gmail.com', password: 'testu4', password_confirmation: 'testu4')
User.create(username: 'test5', email: 'test5@gmail.com', password: 'testu5', password_confirmation: 'testu5')
User.create(username: 'test6', email: 'test5@gmail.com', password: 'testu6', password_confirmation: 'testu6')

puts 'Users created'