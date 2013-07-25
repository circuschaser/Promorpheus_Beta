# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Composer.delete_all
CSV.foreach("Composers.txt", headers: true) do |row|
		Composer.create! row.to_hash
end

Album.delete_all
CSV.foreach("Albums.txt", headers: true) do |row|
		Album.create! row.to_hash
end