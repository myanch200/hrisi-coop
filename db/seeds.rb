# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

martin = User.create(email: "martin@example.com", password: "1234", normal_rate: 10, over_time_rate: 10)
hrisi = User.create(email: "hrisi@example.com", password: "1234", normal_rate: 9.5, over_time_rate: 14.5)
marina = User.create(email: "marina@example.com", password: "1234", normal_rate: 10, over_time_rate: 14.5)