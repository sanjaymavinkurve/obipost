class Post < ActiveRecord::Base
	include FlagShihTzu
	attr_accessor :current_step	
	belongs_to :user
	has_many :photoframes
	accepts_nested_attributes_for :photoframes

  has_flags 1 => :attic,
            2 => :cable_ready,
            3 => :ceiling_fans,
            4 => :double_pane_windows,
            5 => :fireplace,
            6 => :intercom_system,
            7 => :jetted_tub,
            8 => :mil_apartment,
            9 => :security_system,
           10 => :skylights,
           11 => :vaulted_ceiling,
           12 => :wet_bar,
           13 => :wired,
           :column => 'indoor_features'

   has_flags 1 => :balcony_patio,
             2 => :barbecue_area,
             3 => :deck,
             4 => :dock,
             5 => :fenced_yard,
             6 => :garden,
             7 => :greenhouse,
             8 => :hot_tub,
             9 => :lawn,
            10 => :pond,
            11 => :pool,
            12 => :porch,
            13 => :rv_parking,
            14 => :sauna,
            15 => :sprinkler_system,
            16 => :waterfront,
            :column => 'outdoor_features'

    has_flags 1 => :coal,
              2 => :electric,
              3 => :gas,
              4 => :oil,
              5 => :propane,
              6 => :solar_heating_source,
              7 => :wood_heating_source,
              8 => :other_heating_source,
              9 => :none_heating_source,
              :column => 'heating_source'

    has_flags 1 => :brick,
              2 => :cement,
              3 => :composition,
              4 => :metal,
              5 => :shingle,
              6 => :stone,
              7 => :stucco,
              8 => :vinyl,
              9 => :wood_exterior,
             10 => :other_exterior,
             :column => 'exterior'
    
    has_flags 1 => :carport,
              2 => :attached_garage,
              3 => :detached_garage,
              4 => :off_street,
              5 => :on_street,
              6 => :none_parking,
              :column => 'parking'

    has_flags 1 => :city_view,
              2 => :mountain,
              3 => :park,
              4 => :territorial,
              5 => :water,
              6 => :none,
              :column => 'view'

    has_flags 1 => :basebord,
              2 => :forced_air,
              3 => :heat_pump,
              4 => :radiant,
              5 => :stove,
              6 => :wall_heating_type,
              7 => :other_heating_type,
              :column => 'heating_type'

    has_flags 1 => :central,
              2 => :evaporative,
              3 => :geothermal,
              4 => :refrigerator_cooling_type,
              5 => :solar_cooling_type,
              6 => :wall_cooling_type,
              7 => :other_cooling_type,
              :column => 'cooling_type'

    has_flags 1 => :dishwasher,
              2 => :dryer,
              3 => :freezer,
              4 => :garbage_disposal,
              5 => :microwave,
              6 => :range,
              7 => :refrigerator_appliances,
              8 => :trash_compactor,
              9 => :washing_machine,
              :column => 'appliances'

    has_flags 1 => :carpet,
              2 => :concrete,
              3 => :hardwood,
              4 => :laminate,
              5 => :linoleum,
              6 => :slate,
              7 => :softwood,
              8 => :tile,
              9 => :other_floors,
              :column => 'floors'

    has_flags 1 => :breakfast_nook,
              2 => :dining_room,
              3 => :family_room,
              4 => :laundry_room,
              5 => :library,
              6 => :master_bath,
              7 => :mud_room,
              8 => :office,
              9 => :pantry,
             10 => :recreation_room,
             11 => :workshop,
             12 => :solarium,
             13 => :sun_room,
             14 => :walkin_closet,
             :column => 'rooms'

	def steps
		%w[0 1 2 3]
	end
	
	def step_names
	  ["Contact info", "Property basics", "Features", "Neighborhood & School", "Photos"]
  end
	
	def current_step
    @current_step || steps.first
  end
  	
end
