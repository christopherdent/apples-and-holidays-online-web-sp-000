require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 
 
 # given that holiday_hash looks like this:
#   {
  #   :winter => {
 #      :christmas => ["Lights", "Wreath"],
   #    :new_years => ["Party Hats"]
    # },
  #   :summer => {
   #    :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
   #  :fall => {
    #   :thanksgiving => ["Turkey"]
  #   },
   #  :spring => {
    #   :memorial_day => ["BBQ"]
  #   }
  # }
#  return the second element in the 4th of July array
  
holiday_hash[:summer][:fourth_of_july][1]



end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

 
  holiday_hash.each do |key, value|
    if key == :winter
      winterhols = value 
      winterhols.each do |a, b|
        b << supply
      end 
    end
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash.each do |key, value|
    if key == :spring
      springhols = value 
      springhols.each do |a, b|
        b << supply
      end 
    end
  end
end





def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  hash = holiday_hash[season]
  hash[holiday_name] = supply_array
return hash 
end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  
  holiday_hash.each do |key, value|
    counter = 0
    if key == :winter
      value.each do |a, b|
        
        winter_supplies << b
        counter = counter + 1
        
      end 
    end
  end 
 
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

all_supplies = []
counter = 0 

holiday_hash.each do |key, value|
  
puts "#{season.to_s.capitalize!}:"

 
  value.each do |holiday, supplies|
    supplies = supplies.join(', ')
 
    holidays = holiday.to_s
    #"christmas"
    
   holidays = holidays.capitalize
    
   holidays = holidays.split
   #["christmas"] 
   
   
      holidays = holidays.join(", ")
  
      holidays = holidays.gsub(/_/, " ")
      
      
      
   
      
      final = holidays.split.map(&:capitalize).join(' ').prepend('  ')
      final << ": "

      puts season
      puts final + supplies
 
    end 
  end 
end 

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







