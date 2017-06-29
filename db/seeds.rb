# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Assessment.delete_all
Student.delete_all
Batch.delete_all

batch1 = Batch.create!(batch_number: 1, start_date: DateTime.now, end_date: DateTime.now)
batch2 = Batch.create!(batch_number: 2, start_date: DateTime.now, end_date: DateTime.now)


student1 = Student.create!( { first_name: "Paul", surname: "McCann", colour: "", comment: "", image_url: "https://content-static.upwork.com/uploads/2014/10/02123010/profile-photo_friendly.jpg", batch: batch1 } )
student2 = Student.create!( { first_name: "Robin", surname: "Wright", colour: "", comment: "", image_url: "http://www.st2299.com/data/wallpapers/65/wp-image-58225497.jpg", batch: batch1 } )
student3 = Student.create!( { first_name: "Mary", surname: "Tanaka", colour: "", comment: "", image_url: "https://upload.wikimedia.org/wikipedia/commons/6/65/Kruse_CNDLS_Profile.png", batch: batch2 } )
student4 = Student.create!( { first_name: "Steve", surname: "Bennet", colour: "", comment: "",  image_url: "http://ratzinger.cl/wp-content/uploads/2016/06/profile-picture-15.jpg", batch: batch2 } )



  Assessment.create!([
    { colour: "Green", student: student1 },
    { colour: "Red", student: student2 },
    { colour: "Yellow", student: student3 },
    { colour: "Red", student: student1 },
  ])
