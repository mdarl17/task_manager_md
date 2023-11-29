# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Task.destroy_all

task1 = Task.create!(title: "Yardwork", description: "Mow lawn, pick up dog droppings")
task2 = Task.create!(title: "Grocery Shopping", description: "Go to Costco and King Soopers")
task3 = Task.create!(title: "Laundry", description: "Fold clothes on dryer")