admin_pw = "cbUJvY7k"
User.destroy_all
User.create!(email: 'admin@schik.ru', password: admin_pw, password_confirmation: admin_pw)
