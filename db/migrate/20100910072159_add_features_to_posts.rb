class AddFeaturesToPosts < ActiveRecord::Migration
  def self.up

      # Contact information
      add_column :posts, :email, :string
      add_column :posts, :show_email, :boolean

      # Basic information
  	  add_column :posts, :title, :string
      add_column :posts, :type, :string
      add_column :posts, :description, :text
      add_column :posts, :sqft, :float
      add_column :posts, :lot, :float
      add_column :posts, :style, :string
      add_column :posts, :year, :integer
      add_column :posts, :mls, :string
      add_column :posts, :floors, :integer
      add_column :posts, :price, :integer
      add_column :posts, :hoa, :integer
      add_column :posts, :tax, :integer
      add_column :posts, :tax_year, :integer
      add_column :posts, :seller, :string

      # Property features
      add_column :posts, :central_ac, :boolean
      add_column :posts, :central_heat, :boolean
      add_column :posts, :fireplace, :boolean
      add_column :posts, :high_ceiling, :boolean
      add_column :posts, :skylights, :boolean
      add_column :posts, :walkin_closet, :boolean
      add_column :posts, :hardwood_floor, :boolean
      add_column :posts, :tile_floor, :boolean
      add_column :posts, :attic, :boolean
      add_column :posts, :basement, :boolean
      add_column :posts, :roof, :boolean
      add_column :posts, :sprinklers, :boolean

      add_column :posts, :family_room, :boolean
      add_column :posts, :living_room, :boolean
      add_column :posts, :bonus_room, :boolean
      add_column :posts, :office, :boolean
      add_column :posts, :dining_room, :boolean
      add_column :posts, :breakfast_nook, :boolean

      add_column :posts, :dishwasher, :boolean
      add_column :posts, :refrigerator, :boolean
      add_column :posts, :stove, :boolean
      add_column :posts, :microwave, :boolean
      add_column :posts, :washer, :boolean
      add_column :posts, :dryer, :boolean
      add_column :posts, :ss_appliances, :boolean
      add_column :posts, :granite_countertop, :boolean
      add_column :posts, :laundry_inside, :boolean
      add_column :posts, :laundry_garage, :boolean

      add_column :posts, :balcony, :boolean
      add_column :posts, :deck, :boolean
      add_column :posts, :patio, :boolean
      add_column :posts, :yard, :boolean
      add_column :posts, :swimming, :boolean
      add_column :posts, :jacuzzi, :boolean
      add_column :posts, :sauna, :boolean

      add_column :posts, :view, :boolean
      add_column :posts, :waterfront, :boolean

      # Community features
      add_column :posts, :garage_parking, :boolean
      add_column :posts, :covered_parking, :boolean
      add_column :posts, :guest_parking, :boolean
      add_column :posts, :business_center, :boolean
      add_column :posts, :clubhouse, :boolean
      add_column :posts, :laundry_onsite, :boolean
      add_column :posts, :storage_space, :boolean
      add_column :posts, :fitness_center, :boolean
      add_column :posts, :swimming_pool, :boolean
      add_column :posts, :tennis_court, :boolean
      add_column :posts, :golf_course, :boolean
      add_column :posts, :lake, :boolean
      add_column :posts, :playground, :boolean
      add_column :posts, :gated, :boolean
      add_column :posts, :secured_entry, :boolean
      add_column :posts, :elevator, :boolean
      add_column :posts, :wheelchair_access, :boolean

      add_column :posts, :elementary, :string
      add_column :posts, :middle, :string
      add_column :posts, :high, :string
      add_column :posts, :neighborhood, :string

      # Vacation rental
      add_column :posts, :linens, :boolean
      add_column :posts, :full_kitchen, :boolean
      add_column :posts, :utensils, :boolean
      add_column :posts, :bbq_grill, :boolean
      add_column :posts, :tv, :boolean
      add_column :posts, :cable, :boolean
      add_column :posts, :dvd, :boolean
      add_column :posts, :vcr, :boolean
      add_column :posts, :video_game, :boolean

      add_column :posts, :broadband, :boolean
      add_column :posts, :wifi, :boolean
      add_column :posts, :telephone, :boolean

      add_column :posts, :pets, :boolean
      add_column :posts, :smoking, :boolean
      add_column :posts, :kid_friendly, :boolean
      add_column :posts, :no_kids, :boolean
      add_column :posts, :minimum_age, :boolean
      add_column :posts, :senior_only, :boolean
  end

  def self.down
    # Contact information
    remove_column :posts, :email
    remove_column :posts, :show_email

    # Basic information
	  remove_column :posts, :title
    remove_column :posts, :type
    remove_column :posts, :description
    remove_column :posts, :sqft
    remove_column :posts, :lot
    remove_column :posts, :style
    remove_column :posts, :year
    remove_column :posts, :mls
    remove_column :posts, :floors
    remove_column :posts, :parking
    remove_column :posts, :price
    remove_column :posts, :hoa
    remove_column :posts, :tax
    remove_column :posts, :tax_year
    remove_column :posts, :seller

    # Property features
    remove_column :posts, :central_ac
    remove_column :posts, :central_heat
    remove_column :posts, :fireplace
    remove_column :posts, :high_ceiling
    remove_column :posts, :skylights
    remove_column :posts, :walkin_closet
    remove_column :posts, :hardwood_floor
    remove_column :posts, :tile_floor
    remove_column :posts, :attic
    remove_column :posts, :basement
    remove_column :posts, :roof
    remove_column :posts, :sprinklers

    remove_column :posts, :family_room
    remove_column :posts, :living_room
    remove_column :posts, :bonus_room
    remove_column :posts, :office
    remove_column :posts, :dining_room
    remove_column :posts, :breakfast_nook

    remove_column :posts, :dishwasher
    remove_column :posts, :refrigerator
    remove_column :posts, :stove
    remove_column :posts, :microwave
    remove_column :posts, :washer
    remove_column :posts, :dryer
    remove_column :posts, :ss_appliances
    remove_column :posts, :granite_countertop
    remove_column :posts, :laundry_inside
    remove_column :posts, :laundry_garage

    remove_column :posts, :balcony
    remove_column :posts, :deck
    remove_column :posts, :patio
    remove_column :posts, :yard
    remove_column :posts, :swimming
    remove_column :posts, :jacuzzi
    remove_column :posts, :sauna

    remove_column :posts, :view
    remove_column :posts, :waterfront

    # Community features
    remove_column :posts, :garage_parking
    remove_column :posts, :covered_parking
    remove_column :posts, :guest_parking
    remove_column :posts, :business_center
    remove_column :posts, :clubhouse
    remove_column :posts, :laundry_onsite
    remove_column :posts, :storage_space
    remove_column :posts, :fitness_center
    remove_column :posts, :swimming_pool
    remove_column :posts, :tennis_court
    remove_column :posts, :golf_course
    remove_column :posts, :lake
    remove_column :posts, :playground
    remove_column :posts, :gated
    remove_column :posts, :secured_entry
    remove_column :posts, :elevator
    remove_column :posts, :wheelchair_access

    remove_column :posts, :elementary
    remove_column :posts, :middle
    remove_column :posts, :high
    remove_column :posts, :neighborhood

    # Vacation rental
    remove_column :posts, :linens
    remove_column :posts, :full_kitchen
    remove_column :posts, :utensils
    remove_column :posts, :bbq_grill
    remove_column :posts, :tv
    remove_column :posts, :cable
    remove_column :posts, :dvd
    remove_column :posts, :vcr
    remove_column :posts, :video_game

    remove_column :posts, :broadband
    remove_column :posts, :wifi
    remove_column :posts, :telephone

    remove_column :posts, :pets
    remove_column :posts, :smoking
    remove_column :posts, :kid_friendly
    remove_column :posts, :no_kids
    remove_column :posts, :minimum_age
    remove_column :posts, :senior_only
    
  end
end
