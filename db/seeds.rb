# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Set Faker to generate content in English
Faker::Config.locale = 'en'

# Clear existing WikiArticle records
WikiArticle.destroy_all

# Create 10 fake articles with random titles and content
10.times do
  WikiArticle.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.sentence(word_count: 10)
  )
end
