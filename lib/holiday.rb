require 'pry'

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

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

holiday_hash[:winter][:christmas] << supply && holiday_hash[:winter][:new_years] << supply
# binding.pry
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_data|
    puts "#{season.to_s.capitalize}:"
    
    holiday_data.each do |holiday, supplies|
      arr = holiday.to_s.gsub(/[_]/, " ").split
      new_holiday = arr.collect { |h| h.capitalize }
      new_holiday = new_holiday.join(" ")
      puts "  #{new_holiday}: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.each do |season, holiday_data|
    holiday_data.each do |holiday, supplies|
      supplies.each do |item|
        arr << holiday if item == "BBQ"
      end
    end
  end
  arr

end







