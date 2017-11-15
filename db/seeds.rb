# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
10.times do |index|
  Book.create!(genre: Faker::Book.genre)

end
p "Created #{Book.count} genre"



Category.destroy_all

10.times do |index|
  Category.create!(name: Faker::Overwatch.hero)

end

p "Created #{Category.count} categories"



Title.destroy_all

10.times do |index|
  Title.create!(name: Faker::Book.title,
                author: Faker::Book.author,
                image: Faker::LoremPixel.image)

end

p "Created #{Title.count} titles"
