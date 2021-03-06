# This file should contain all the record creation needed to seed the database with its default values.
require 'faker'
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  article = Article.new(
    title: Faker::Movies::StarWars.planet,
    content: Faker::Movies::StarWars.wookiee_sentence.join(“<br>“)
  )
  article.save!
end
