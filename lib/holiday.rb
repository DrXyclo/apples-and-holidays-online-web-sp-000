require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end
# supply = "Balloons"
holiday_supplies = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies.each do |season, holiday_name|
    if season == :winter
      holiday_name.each do |name, stuff| 
      stuff << supply
     # binding.pry
    end
  end 
  end
end

# add_supply_to_winter_holidays(holiday_supplies, supply)

supply = "Grill"

def add_supply_to_memorial_day(holiday_supplies, supply)
 
  holiday_supplies.each do |season, holiday_name|
    if season == :spring
      holiday_name.each do |name, stuff| 
      stuff << supply
     # binding.pry
    end
  end 
  end
end
add_supply_to_memorial_day(holiday_supplies, supply)

=begin 

=end 

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  holiday_supplies.each do |season_hash, holiday_name_hash|
   # binding.pry
    if season_hash == season
     holiday_supplies[season][holiday_name] = supply_array
    end 
  end
end
=begin 
holiday_supplies = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
=end 
     
def all_winter_holiday_supplies(holiday_supplies)
  winter_supply_array = []
  holiday_supplies.each do |season, holiday_name|
    if season == :winter
    winter_supply_array << holiday_name.values
    end
  end 
 return winter_supply_array.flatten
 # binding.pry
end

# all_winter_holiday_supplies(holiday_supplies)


=begin  
      @output = <<-TEXT
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
TEXT
end
=end 
def all_supplies_in_holidays(holiday_supplies)
holiday_supplies.each do |season_hash, holiday_hash|
  puts "#{season_hash.capitalize}:"
  holiday_hash.each do |holiday_name, supplies_array|
     # binding.pry 
    holiday_name_string = holiday_name.to_s
    holiday_name_array = holiday_name_string.split("_")
    
    holiday_name_capitalize = holiday_name_array.map {|array_element| array_element.capitalize}
    holiday_name_cap_join = holiday_name_capitalize.join(" ")
    
    # supplies_array.each do 
    
  puts "  #{holiday_name_cap_join}: #{supplies_array[0]},#{supplies_array[1]}"
   # binding.pry
  end 
end 
end 
all_supplies_in_holidays(holiday_supplies)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







