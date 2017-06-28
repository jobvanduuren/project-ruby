# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.delete_all
Batch.delete_all

batch1 = Batch.create!(batch_number: 1)
batch2 = Batch.create!(batch_number: 2)


Student.create!([
    { first_name: "Paul", surname: "McCann", colour: "", comment: "", image_url: "https://content-static.upwork.com/uploads/2014/10/02123010/profile-photo_friendly.jpg", batch: batch1 },
    { first_name: "Robin", surname: "Wright", colour: "", comment: "", image_url: "http://www.st2299.com/data/wallpapers/65/wp-image-58225497.jpg", batch: batch1 },
    { first_name: "Mary", surname: "Tanaka", colour: "", comment: "", image_url: "https://upload.wikimedia.org/wikipedia/commons/6/65/Kruse_CNDLS_Profile.png", batch: batch2 },
    { first_name: "Steve", surname: "Bennet", colour: "", comment: "",  image_url: "http://ratzinger.cl/wp-content/uploads/2016/06/profile-picture-15.jpg", batch: batch2 },
  ])
