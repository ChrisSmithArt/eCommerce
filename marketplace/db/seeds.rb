# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


#provincal sales tax api https://api.salestaxapi.ca/v2/province/all
#


# TaxRateByLocation.create!(
#   province: "Alberta",
#   current_gst: 5,
#   current_hst: 0,
#   current_pst: 0,
#   current_qst: 0
# )

# User.create!(
#   user_name: "Chris",
#   password: "password",
#   email: "chrissmithart@proton.me",
#   description: "DM, Artist, Programmer.",
#   address: "888 Mulvey Avenue",
#   tax_rate_by_location_id: TaxRateByLocation.where(province: "Manitoba").first.id
# )
#


# User.create!(
#   user_name: "Zach",
#   password: "heroman",
#   email: "zmschuster@gmail.com",
#   description: "Skater, Artist, fun guy, super tall.",
#   address: "Somewhere...",
#   tax_rate_by_location_id: TaxRateByLocation.where(province: "Saskatchewan").first.id
# )

# ServiceType.create!(
#   service_type_name: "Mentoring Session",
#   service_type_description: "A meeting to mentor someone on a specific topic.",
#   meeting_required: true
# )

# ServiceOffer.create!(
#   service_offer_name: "Boss Monster Design",
#   service_offer_price: 500,
#   service_offer_notes: "Mentoring you on how to design Boss Monsters for your TTRPG games.",
#   google_forms_link: "google.com",
#   caldotcom_link: "cal.com",
#   slot_availabilty: 3,
#   user_id: User.first.id,
#   service_type_id: ServiceType.first.id
# )
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
