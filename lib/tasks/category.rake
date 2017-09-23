namespace :category do 
  desc 'Add Category'

  task :populate => :environment do 
    clear_category
    populate_category
  end


  task :clear => :environment do 
    clear_category
  end

  def clear_category 
    Category.delete_all
  end

  def populate_category 
    for i in 1...1000 do 
      Category.create! name: Faker::Commerce.department(1, true), description: Faker::RockBand.name
    end
  end
end
