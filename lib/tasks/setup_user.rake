task :setup_user => :environment do 
	Role.create(name: "admin")
	Role.create(name: "user")

	user = User.create(email: "admin@gmail.com", password: "secret123")
	user.roles.push(Role.first)
end