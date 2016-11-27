task :setup_data => :environment do 
	5.times do 	
		Category.create(name: Faker::Commerce.department(1))
	end

	50.times do 
		Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, category_id: Category.all.pluck(:id).sample)
	end
end