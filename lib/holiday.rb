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

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, arr| 
    arr << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season] = {holiday_name => supply_array}
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_arr = []
  holiday_hash[:winter].each do |holidays, supplies|
    winter_arr << supplies
  end
  winter_arr.flatten
end
    

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize!}.join(" ")}: #{supplies.join", "}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_arr = []
  holiday_hash.each do |season, holiday|
    holiday.each do |supplies|
      if supplies.include?("BBQ")
        bbq_arr << holiday
      end
    end
  end
  bbq_arr
end







