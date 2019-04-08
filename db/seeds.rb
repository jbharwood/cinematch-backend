# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "a", password:"1234")
User.create(username: "b", password:"1234")
User.create(username: "j", password:"1234")
Feed.create(name: "mainfeed")
Post.create(content: "blah", feed_id: 1, user_id: 1)
