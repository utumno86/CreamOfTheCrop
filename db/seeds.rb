# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file .env file.

30.times do
  w = Wrestler.new
  w.name = Faker::Name.name
  a = Random.rand(1..2)
  if a == 1
    w.alignment = true
  else
    w.alignment = false
  end
  w.position = Random.rand(1..5)
  w.user_id = 1
  w.remote_image_url = ("http://loremflickr.com/640/480/wrestling")
  w.save
end
