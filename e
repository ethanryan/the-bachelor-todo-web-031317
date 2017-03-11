
[1mFrom:[0m /home/ethanryan-25505/code/labs/the-bachelor-todo-web-031317/lib/bachelor.rb @ line 7 Object#get_first_name_of_season_winner:

     [1;34m3[0m: [32mdef[0m [1;34mget_first_name_of_season_winner[0m(data, season)
     [1;34m4[0m:   winners = [] [1;34m#array to hold winners[0m
     [1;34m5[0m:   [1;34m# code here[0m
     [1;34m6[0m:   data.each [32mdo[0m |season_number, value| [1;34m#season is season_number, value is data... value[0] is first hash within season...[0m
 =>  [1;34m7[0m:     binding.pry
     [1;34m8[0m:     [32mif[0m (season_number == season) [1;34m#if this is the season passed into the method...[0m
     [1;34m9[0m:       [1;34m#can i do value.to_h below????????[0m
    [1;34m10[0m:       [1;34m#doing value.each_with_index instead of just each gets me 'values'... key below is first hash, index is 0, value is all hashes...[0m
    [1;34m11[0m:       value.each_with_index [32mdo[0m |key, index| [1;34m#key is first hash of data WITHIN array, value is nil... (first is name)[0m
    [1;34m12[0m:       [1;34m#binding.pry[0m
    [1;34m13[0m:       [1;34m#   if (value[5] == "Winner") #"status":"Winner" ... and the contestant is the winner...<<<<need to get this info! i'm in a hash within an array...[0m
    [1;34m14[0m:       [1;34m#     winners << value[0] ###put name into winners array[0m
    [1;34m15[0m:       [1;34m#   end #end if statement[0m
    [1;34m16[0m: 
    [1;34m17[0m:       [32mend[0m [1;34m#end if (season_number == season) statement[0m
    [1;34m18[0m:     [32mend[0m [1;34m#end for each loop[0m
    [1;34m19[0m:   [32mend[0m [1;34m#end for each loop[0m
    [1;34m20[0m:   puts winners [1;34m#to see what i'm getting[0m
    [1;34m21[0m:   [32mreturn[0m winners [1;34m#will need to make it so only returning first name of winner[0m
    [1;34m22[0m: [32mend[0m [1;34m#end method[0m

