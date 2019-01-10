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
  # return an array of all of the supplies that are used in the winter season
  winter_supply_array = []
  holiday_supplies.each do |season, holiday_name|
                          if season == :winter
                            winter_supply_array << holiday_name.values.flatten
                            #winter_supply_array.flatten
                          # binding.pry 
                        end
                      end 
  

  #winter_supply_array.delete_if {|i| i == nil }

  winter_supply_array.flatten
  winter_supply_array
 binding.pry
end

all_winter_holiday_supplies(holiday_supplies)

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







