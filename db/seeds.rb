# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
applications = ProjectApplication.create([
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