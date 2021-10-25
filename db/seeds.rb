# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
    
    #Create Guest  User as Patient
    User.create(
        name: "Guest Patient",
        email: "guestpatient@gmail.com",
        address: "Calavi",
        phone_number: "85693214",
        password: "guestpatient",
    )

    #Create Guest User as Doctor
    User.create(
        name: "Guest Doctor",
        email: "guestdoctor@gmail.com",
        address: "Grand Popo",
        phone_number: "41253636",
        password: "guestdoctor",
        establishment: "true"
    )

    #Create Guest User as Admin
    User.create(
        name: "Guest Admin",
        email: "guestadmin@gmail.com",
        address: "Allada",
        phone_number: "96362578",
        password: "guestadmin",
        admin: "true"
    )
 
    

    #Create real User Admin
    User.create(
        name: "Admin",
        email: "admin@gmail.com",
        address: "Parakou",
        phone_number: "67253684",
        password: "meetdoctoradmin",
        admin: "true"
    )
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    #Create five(05) fictives patients users
    5.times do 
        name = Faker::Name.last_name 
        email = Faker::Internet.email
        password = "patientpassword"
        address = Faker::Address.street_address
        phone_number = Faker::PhoneNumber.subscriber_number(length: 8)
        avatar = Faker::Placeholdit.image
        User.create(
            name: name,
            email: email,
            password: password,
            address: address,
            phone_number: phone_number,
            avatar: avatar,
        )
    end

   

    #Create five(05) fictives doctors users
    5.times do 
        name = Faker::Name.last_name 
        email = Faker::Internet.email
        password = "patientpassword"
        address = Faker::Address.street_address
        phone_number = Faker::PhoneNumber.subscriber_number(length: 8)
        avatar = Faker::Placeholdit.image
        User.create(
            name: name,
            email: email,
            password: password,
            address: address,
            phone_number: phone_number,
            avatar: avatar,
            establishment: "true"
        )
    end

    n = 10

    #Create five(05) fictives doctors infos
    5.times do 
        user_id = n
        speciality = Faker::Lorem.word
        hourly = Faker::Date.between(from: '2021-11-01', to: '2022-12-30')
        Doctor.create(
            user_id: user_id,
            speciality: speciality,
            hourly: hourly,
        )
        n = n + 1
    end

    n = 10
    #Create five(05) fictives announces from doctors
    5.times do 
        user_id = n
        title = Faker::Lorem.sentences(number: 1)
        content = Faker::Lorem.paragraphs(number: 3)
        image = Faker::Placeholdit.image 
        Annonce.create(
            user_id: user_id,
            title: title,
            content: content,
            image: image,
        )
       n = n + 1
    end

    c = 8
    d = 1
    #Create five(05) fictives comments from patients and doctors users
    5.times do 
        user_id = c
        annonce_id = d
        content = Faker::Lorem.sentence
        Comment.create(
            user_id: user_id,
            annonce_id: annonce_id,
            content: content,
        )
        c = c + 1
        d = d+ 1
    end

    a = 5
    n = 1
    #Create five(05) fictives appointments from patients users
    5.times do 
        user_id = a
        doctor_id = n
        message = Faker::Lorem.sentence
        Appointment.create(
            user_id: user_id,
            doctor_id: doctor_id,
            message: message,
        )
        a = a + 1
        n = n + 1
    end