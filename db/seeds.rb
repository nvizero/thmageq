# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Footer.create(name: 'Luke', movie: movies.first)
User.create(email: 'nvizero@yahoo.com.tw', encrypted_password: "$2a$11$8x85DxearHjGpJ0XGKKAg.oP2ID/3qHN.5ZPAbBS64p6Mn6XKHjve")

Footer.create(title_ch: 'Luke', title_en: "" , address_en: "" , address_ch:"" , tel:"", email: "", sub_en:"" , sub_ch:"",fax:"" ,content_ch:"",content_en:"")
Footer.create(title_ch: 'Luke', title_en: "" , address_en: "" , address_ch:"" , tel:"", email: "", sub_en:"" , sub_ch:"",fax:"" ,content_ch:"",content_en:"")
Footer.create(title_ch: 'Luke', title_en: "" , address_en: "" , address_ch:"" , tel:"", email: "", sub_en:"" , sub_ch:"",fax:"" ,content_ch:"",content_en:"")
Footer.create(title_ch: 'Luke', title_en: "" , address_en: "" , address_ch:"" , tel:"", email: "", sub_en:"" , sub_ch:"",fax:"" ,content_ch:"",content_en:"")
Footer.create(title_ch: 'Luke', title_en: "" , address_en: "" , address_ch:"" , tel:"", email: "", sub_en:"" , sub_ch:"",fax:"" ,content_ch:"",content_en:"")

# Msg.create(title: 'qweqweqwe' ,  cate_id: 1 ,content: "qq" ,user_id: 1 )
prng = Random.new

50.times do |i|
  Msg.create(title: 'qweqweqwe'+"#{i.to_s}" ,  cate_id: prng.rand(1..2).to_i  ,content: "qq"+"#{i.to_s}" ,user_id: 1 )
  # Footer.create(title_ch: 'Luke', title_en: "" , address_en: "" , address_ch:"" , tel:"", email: "", sub_en:"" , sub_ch:"",fax:"" ,content_ch:"",content_en:"")
end
