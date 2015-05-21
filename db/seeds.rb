=begin

if Post.where(title: "A test Post", body: "blah blah blah").blank?
  new_post=Post.create!(title: "A test Post", body: "blah blah blah")
end

if Comment.where(body: "this is a comment").blank?
  Comment.create!(body: "this is a comment")
end

## How to chech for a comment on a specific post ?!!
=end

require 'faker'

50.times do
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end

posts = Post.all

100.times do 
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end


puts "Seed Finished"
puts "Number of Posts = #{Post.count}"
puts "Number of comments = #{Comment.count}"