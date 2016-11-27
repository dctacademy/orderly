task :clear_data => :environment do 
	Role.delete_all
	User.delete_all
	Category.delete_all
	Product.delete_all
end