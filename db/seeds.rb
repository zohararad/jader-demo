# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..10).each do |t|
  post = Post.new
  post.title = Faker::Lorem.sentence(6)
  post.content = Faker::Lorem.paragraphs(4).map {|par| "<p>#{par}</p>"}.join('')

  comment = Comment.new
  comment.content = Faker::Lorem.sentence(20)
  post.comments << comment
  post.save
end