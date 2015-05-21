if Post.where(title: "A test Post", body: "blah blah blah").blank?
  new_post=Post.create!(title: "A test Post", body: "blah blah blah")
end

if Comment.where(body: "this is a comment").blank?
  Comment.create!(body: "this is a comment")
end

## How to chech for a comment on a specific post ?!!