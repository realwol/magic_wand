# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create!(email: Faker::Internet.email, name: Faker::Superhero.name, password: '123123ab')
  Article.create!(title: Faker::Book.title, content: Faker::Lorem.paragraphs.join("\n"), user: user)
end
