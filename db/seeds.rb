## This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
Category.destroy_all
Title.destroy_all

10.times do |index|
  Book.create!(genre: Faker::Book.genre)

end
p "Created #{Book.count} genre"




40.times do |index|
  Category.create!(name: Faker::Overwatch.hero,
                  book_id: Faker::Number.between(Book.first.id, Book.last.id))

end

p "Created #{Category.count} categories"




100.times do |index|
  Title.create!(name: Faker::Book.title,
                author: Faker::Book.author,
                image: Faker::LoremPixel.image("600x1000", false, 'cats'),
                category_id: Faker::Number.between(Category.first.id, Category.last.id))

end

p "Created #{Title.count} titles"
