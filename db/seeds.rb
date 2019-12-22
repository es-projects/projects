require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = []
30.times do |n|
    users[n] = User.create(
        username: Faker::Internet.user_name,
        email: Faker::Internet.email,
        password:  BCrypt::Password.create('asd_123')        
    )

Student.create([
    { number: 20165, name:'David Moreno', ects:150, average:12.96, group_id: 0 , project_id: 0, user_id: users[1] },
    { number: 20167, name:'Diogo Ribeiro', ects:150, average:13.84, group_id: 0 , project_id: 0, user_id: users[2] }])

10.times do |n|
    Student.create(
        number: rand(1..30000),
        name: Faker::TvShows::SouthPark.character,
        ects: rand(1..180),
        average: rand(1..20),
        group_id: 0,
        project_id: 0,
        user_id: users[n+2]
    )
end

15.times do |n|
    Advisor.create(
        name: Faker::TvShows::Simpsons.character,
        email: Faker::Internet.email,
        intern: Faker::Boolean.boolean(true_ratio: 0.4,
        user_id: users[n+12] )
    )
end

ProjectApplication.create([
	{ group_id: '1', project_id: '1', accepted: 'false' },
	{ group_id: '1', project_id: '2', accepted: 'true' },
	{ group_id: '1', project_id: '3', accepted: 'false' },
	{ group_id: '2', project_id: '3', accepted: 'false' },
	{ group_id: '2', project_id: '1', accepted: 'true' },
	{ group_id: '2', project_id: '2', accepted: 'false' },
	{ group_id: '3', project_id: '3', accepted: 'true' },
	{ group_id: '3', project_id: '1', accepted: 'false' },
	{ group_id: '3', project_id: '2', accepted: 'false' }
])
