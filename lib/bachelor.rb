require "pry"

def get_first_name_of_season_winner(data, season)
  winners_array = [] #array to hold winners
  data.each do |season_number, value| #season is season_number, value is data... value[0] is first hash within season...
    #binding.pry
    if (season_number == season) #if this is the season passed into the method...

      value.each do |key, value| #key is first hash of data WITHIN array, value is nil... (first is name)
        #binding.pry
        #key.keys => ["name", "age", "hometown", "occupation", "status"]
        #key.values=> ["Tessa Horst", "26", "San Francisco, CA", "Social Worker", "Winner"]

        if (key.values[4] == "Winner") #if "status":"Winner"...
          winners_array << key.values[0] ###put that contestant's name into winners_array
        end #end if statement

      end #end if (season_number == season) statement
    end #end for each loop
  end #end for each loop

  #winner_first_name = winners_array.to_s.split.first.flatten #split the name within winners_array array by the space separating first and last name...
  winner_first_name = winners_array.first.split.first #first returns the first name in winners_array as a string, split splits the name at the space between first and last name, and first returns the first name

  puts winner_first_name #to see what i'm getting
  return winner_first_name
end #end method



def get_contestant_name(data, occupation)

  contestant_array = [] #array to hold contestant
  data.each do |season_number, value| #season is season_number, value is data... value[0] is first hash within season...
    #binding.pry
      value.each do |key, value| #key is first hash of data WITHIN array, value is nil... (first is name)
        #binding.pry
        #key.keys => ["name", "age", "hometown", "occupation", "status"]
        #key.values=> ["Tessa Horst", "26", "San Francisco, CA", "Social Worker", "Winner"]

        if (key.values[3] == occupation) #if "occupation" == the occupation passed into the method as a parameter...
          contestant_array << key.values[0] ###put that contestant's name into contestant_array
        end #end if statement

    end #end for each loop
  end #end for each loop

  contestant = contestant_array.first #return the first (and only) contestant name from contestant_array as a string

  puts contestant #to see what i'm getting
  return contestant
end #end method



def count_contestants_by_hometown(data, hometown)

  hometown_array = [] #array to hold names of contestants from hometown passed into method as a parameter
  data.each do |season_number, value| #season is season_number, value is data... value[0] is first hash within season...
    #binding.pry
      value.each do |key, value| #key is first hash of data WITHIN array, value is nil... (first is name)
        #binding.pry
        #key.keys => ["name", "age", "hometown", "occupation", "status"]
        #key.values=> ["Tessa Horst", "26", "San Francisco, CA", "Social Worker", "Winner"]

        if (key.values[2] == hometown) #if "occupation" == the occupation passed into the method as a parameter...
          hometown_array << key.values[0] ###put that contestant's name into contestant_array
        end #end if statement

    end #end for each loop
  end #end for each loop

  count = hometown_array.length #assign number of contestants in hometown_array to variable 'count'

  puts count #to see what i'm getting
  return count
end #end method




def get_occupation(data, hometown)

  occupation_array = [] #array to hold occupation of contestants from hometown passed into method as a parameter
  data.each do |season_number, value| #season is season_number, value is data... value[0] is first hash within season...
    #binding.pry
      value.each do |key, value| #key is first hash of data WITHIN array, value is nil... (first is name)
        #binding.pry
        #key.keys => ["name", "age", "hometown", "occupation", "status"]
        #key.values=> ["Tessa Horst", "26", "San Francisco, CA", "Social Worker", "Winner"]

        if (key.values[2] == hometown) #if "hometown" == the hometown passed into the method as a parameter...
          occupation_array << key.values[3] ###put that contestant's occupation into occupation_array
        end #end if statement

      #end #end if (season_number == season) statement
    end #end for each loop
  end #end for each loop

  occupation = occupation_array.first #first (and only) string element in occupation_array is assigned to variable 'occupation'

  puts occupation #to see what i'm getting
  return occupation
end #end method




def get_average_age_for_season(data, season)

  ages_array = [] #array to hold winners
  data.each do |season_number, value| #season is season_number, value is data... value[0] is first hash within season...
    #binding.pry
    if (season_number == season) #if this is the season passed into the method...
      value.each do |key, value| #key is first hash of data WITHIN array, value is nil... (first is name)
        #binding.pry
        #key.keys => ["name", "age", "hometown", "occupation", "status"]
        #key.values=> ["Tessa Horst", "26", "San Francisco, CA", "Social Worker", "Winner"]

        ages_array << key.values[1] ###put contestant's age into ages_array

      end #end if (season_number == season) statement
    end #end for each loop
  end #end for each loop

  #eval x.to_s.gsub('"', '')
  #got this from here: http://stackoverflow.com/questions/20834334/getting-rid-of-double-quotes-inside-array-without-turing-array-into-a-string
  array_of_numbers = eval ages_array.to_s.gsub('"', '') #this will eliminate quotes around numbers in ages_array

  #arr.inject{ |sum, el| sum + el }.to_f / arr.size
  #got this from here: http://stackoverflow.com/questions/1341271/how-do-i-create-an-average-from-a-ruby-array
  average = array_of_numbers.inject{ |sum, el| sum + el }.to_f / array_of_numbers.size

  puts average.round #to see what i'm getting// .round rounds float to nearest integer (ex: 1.8 becomes 2, or nearest round number)
  return average.round #.round rounds float to nearest integer (ex: 1.8 becomes 2, or nearest round number)
end #end method
