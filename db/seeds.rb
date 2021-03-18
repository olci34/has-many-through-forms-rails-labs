# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(username: "johnny", email: "j@g.com")
user2 = User.create(username: "heather", email: "2ad@s.com")

ctg1 = Category.create(name: "Drama")
ctg2 = Category.create(name: "Health")

post1 = user1.posts.create(title: "johnny posts", content: "Johnny posts content")
post2 = user2.posts.create(title: "heather posts", content: "heather posts content")

post1.categories = [ctg1, ctg2]
post2.categories = [ctg2]
post1.save
post2.save
user1.comments.create(content: "Johnny comments", post_id:3)



