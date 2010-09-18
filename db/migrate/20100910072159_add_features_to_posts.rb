class AddFeaturesToPosts < ActiveRecord::Migration
  def self.up

      # 1
      change_column :posts, :phone_number, :string
      add_column :posts, :email, :string
      add_column :posts, :company, :string

      # 2
      add_column :posts, :listing_type, :string
      add_column :posts, :property_type, :string
      add_column :posts, :year_built, :integer
      add_column :posts, :year_updated, :integer
      add_column :posts, :mls, :string
      add_column :posts, :price, :integer
      add_column :posts, :hoa_fees, :integer
      add_column :posts, :floors, :integer
      add_column :posts, :square_footage, :integer
      add_column :posts, :lot_size, :integer
      add_column :posts, :covered_parking, :integer
      add_column :posts, :roof, :string
      add_column :posts, :basement, :string
      add_column :posts, :style, :string

      # 3
      add_column :posts, :indoor_features, :integer
      add_column :posts, :outdoor_features, :integer
      add_column :posts, :heating_source, :integer
      add_column :posts, :exterior, :integer
      add_column :posts, :parking, :integer
      add_column :posts, :view, :integer
      add_column :posts, :heating_type, :integer
      add_column :posts, :cooling_type, :integer
      add_column :posts, :appliances, :integer
      add_column :posts, :floors_type, :integer
      add_column :posts, :rooms, :integer
      
      # 4
      add_column :posts, :school_district, :string
      add_column :posts, :elementary, :string
      add_column :posts, :middle, :string
      add_column :posts, :high, :string
      add_column :posts, :neighborhood, :string
      add_column :posts, :neighborhood_description, :text
      
  end

  def self.down
    change_column :posts, :phone_number, :integer
    remove_column :posts, :email, :string
    remove_column :posts, :company, :string

    # 2
    remove_column :posts, :listing_type, :string
    remove_column :posts, :property_type, :string
    remove_column :posts, :year_built, :integer
    remove_column :posts, :year_updated, :integer
    remove_column :posts, :mls, :string
    remove_column :posts, :price, :integer
    remove_column :posts, :hoa_fees, :integer
    remove_column :posts, :floors, :integer
    remove_column :posts, :square_footage, :integer
    remove_column :posts, :lot_size, :integer
    remove_column :posts, :covered_parking, :integer
    remove_column :posts, :roof, :string
    remove_column :posts, :basement, :string
    remove_column :posts, :style, :string

    # 3
    remove_column :posts, :indoor_features, :integer
    remove_column :posts, :outdoor_features, :integer
    remove_column :posts, :heating_source, :integer
    remove_column :posts, :exterior, :integer
    remove_column :posts, :parking, :integer
    remove_column :posts, :view, :integer
    remove_column :posts, :heating_type, :integer
    remove_column :posts, :cooling_type, :integer
    remove_column :posts, :appliances, :integer
    remove_column :posts, :floors_type, :integer
    remove_column :posts, :rooms, :integer
    
    # 4
    remove_column :posts, :school_district, :string
    remove_column :posts, :elementary, :string
    remove_column :posts, :middle, :string
    remove_column :posts, :high, :string
    remove_column :posts, :neighborhood, :string
    remove_column :posts, :neighborhood_description, :text
    
  end
end
