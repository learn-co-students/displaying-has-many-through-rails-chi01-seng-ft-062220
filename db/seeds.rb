Post.destroy_all
User.destroy_all
Comment.destroy_all


15.times do
    Post.create(title: Faker::Food.dish, content: Faker::Food.description)
end

10.times do
    User.create(username: Faker::Internet.username, email: Faker::Internet.email)
end

15.times do
    Comment.create(content: Faker::Coffee.notes, user_id: User.all.sample.id, post_id: Post.all.sample.id)
end



