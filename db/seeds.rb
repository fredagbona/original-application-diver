# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
    # Create User Patient as Guest
    User.create(
        name: "Guest Patient",
        email: "guestpatient@gmail.com",
        address: "Porto",
        phone_number: "95214782",
        password: "guestpatient"
    )

    #Create User Doctor as Guest
    User.create(
        name: "Guest Doctor",
        email: "guestdoctor@gmail.com",
        address: "Ouidah",
        phone_number: "97856314",
        password: "guestdoctor",
        establishment: "true"
    )

    #Create User Admin as Guest
    User.create(
        name: "Guest Admin",
        email: "guestadmin@gmail.com",
        address: "Bohicon",
        phone_number: "95214782",
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
