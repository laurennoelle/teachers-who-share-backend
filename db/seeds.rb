# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding..."

Resource.create(title:"Back to School Activities", subject:"Back To School", grade:2, description:"Heading back to school is such an exciting time for our students. Spend those first days back with a collection of activities that help your students get to know you and their classmates. This BUNDLE includes over 30 printable activities and 20 digital activities that are perfect for the first weeks of school.", reviews:56, image:"https://i.imgur.com/4ToHBx2.jpg")
Resource.create(title:"Spelling Activities", subject:"Phonics", grade:1, description:"This massive pack of engaging spelling sheets allow your students to complete word work in effective and engaging ways. As a teacher, you will never have to wonder what to plan for a spelling center or activity ever again!", reviews:78, image:"https://i.imgur.com/tC5X22S.jpg")
Resource.create(title:"Sight Word Sentences", subject:"Literacy", grade:1, description:"These Sight Word Sentences and Games are designed to help students build confidence with early literacy skills. A high level of support is provided. Just one sight word is added on each page", reviews:15, image:"https://i.imgur.com/6YSc7ZG.jpg")




puts "✅ Done seeding!"