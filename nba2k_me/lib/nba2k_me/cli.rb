class Nba2kMe::CLI


    def call
        Nba2kMe::Scraper.scrape_players
        list_players
        menu
    end 

    def list_players
        puts "#########################################"
        puts "### Select the best to beat the best! ###"
        puts "#########################################"
        @players = Nba2kMe::Player.all
        @players.each.with_index(1) do |player, x|
            if x == 1 
            puts "#{x}. All Around"
            elsif x == 2
            puts "#{x}. Shooter"
            elsif x == 3
            puts "#{x}. Slasher"
            elsif x == 4
            puts "#{x}. Point Guard"
            elsif x == 5
            puts "#{x}. Shooting Guard"
            elsif x == 6
            puts "#{x}. Small Forward"
            elsif x == 7
            puts "#{x}. Power Foward"
            elsif x == 8
            puts "#{x}. Center"

          
     end 
    end
end
    def menu 
        
    input = nil 
    while input != "exit"
        puts "                                  "
        puts " Enter your playing Stlye/Position"
        puts "                                  "
   
        input = gets.strip.downcase 
            

        if input == "list"
            list_players
        else 
            
        case input 
            when "all around" 
            
                puts " "
                puts Nba2kMe::Player.all[0].name + " " + Nba2kMe::Player.all[0].team + "    " + "Overall Rating = " + Nba2kMe::Player.all[0].rating 
                puts " "
                puts "Enter any key or phrase to get back to the main menu or more for more info"
                input = gets.strip.downcase 
                case input 
                    
                     when "more"
                puts " "
                puts "Visit - " + " " +  Nba2kMe::Player.all[0].breakdown + " " + " For more percise attributes"
                     end



                    when "shooter"
                        puts " "
                        puts Nba2kMe::Player.all[1].name + " " + Nba2kMe::Player.all[1].team + "    " + "Overall 3pt Rating = " + Nba2kMe::Player.all[1].rating
                        puts " "
                        puts "Enter any key or phrase to get back to the main menu or more for more info"
                        puts " "
                        input = gets.strip.downcase 
                        case input 
                            
                            when "more"
                            puts " "
                            puts "Visit - " + " " +  Nba2kMe::Player.all[1].breakdown + " " + " For more percise attributes"
                            else 
                                input
                            end




                                when "slasher"
                                    puts " "
                                    puts Nba2kMe::Player.all[2].name + " " + Nba2kMe::Player.all[2].team + "    " + "Overall Dunk Rating = " + Nba2kMe::Player.all[2].rating
                                    puts " "
                                    puts "Enter any key or phrase to get back to the main menu or more for more info"
                                    input = gets.strip.downcase 
                                    case input 
                                        
                                    when "more"
                                        puts " "
                                        puts "Visit - " + " " +  Nba2kMe::Player.all[2].breakdown + " " + " For more percise attributes"
                                    else 
                                        input
                                    end
                                    
                                



                                            when "point guard"
                                                puts " "
                                                puts Nba2kMe::Player.all[3].name + " " + Nba2kMe::Player.all[3].team + "    " + "Overall Rating = " +Nba2kMe::Player.all[3].rating
                                                puts " "
                                                puts "Enter any key or phrase to get back to the main menu or more for more info"
                                                input = gets.strip.downcase 
                                                case input 
                                                    
                                                when "more"
                                                    puts " "

                                                    puts "Visit - " + " " +  Nba2kMe::Player.all[3].breakdown + " " + " For more percise attributes"

                                                 else 
                                                    input
                                                end
                                                

        


                                                    when "shooting guard"
                                                        puts " "
                                                        puts Nba2kMe::Player.all[4].name + " " + Nba2kMe::Player.all[4].team + "    " + "Overall Rating = " + Nba2kMe::Player.all[4].rating
                                                        puts " "
                                                        puts "Enter any key or phrase to get back to the main menu or more for more info"
                                                        input = gets.strip.downcase 
                                                        case input 
                                                            
                                                        when "more"
                                                            puts " "
                                                        puts "Visit - " + " " +  Nba2kMe::Player.all[4].breakdown + " " + " For more percise attributes"
                                                        else 
                                                            input
                                                        end
                                                
                                                
                                                
                                                    when "small forward"
                                                                puts " "
                                                                puts Nba2kMe::Player.all[5].name + " " + Nba2kMe::Player.all[5].team + "    " + "Overall Rating = " + Nba2kMe::Player.all[5].rating
                                                                puts " "
                                                                puts "Enter any key or phrase to get back to the main menu or more for more info"
                                                                input = gets.strip.downcase 
                                                                case input 
                                                                    
                                                                when "more"
                                                                    puts " "

                                                                puts "Visit - " + " " +  Nba2kMe::Player.all[5].breakdown + " " + " For more percise attributes"
                                                                else 
                                                                    input
                                                                end
                                                 
                                                 
                                                 
                                                            when "power forward"
                                                        puts " "
                                                        puts Nba2kMe::Player.all[6].name + " " + Nba2kMe::Player.all[6].team + "    " + "Overall Rating = " +Nba2kMe::Player.all[6].rating
                                                        puts " "
                                                        puts "Enter any key or phrase to get back to the main menu or more for more info"
                                                        input = gets.strip.downcase 
                                                        case input 
                                                            
                                                        when "more"
                                                            puts " "
                                                        puts "Visit - " + " " +  Nba2kMe::Player.all[6].breakdown + " " + " For more percise attributes"
                                                    else 
                                                        input
                                                    end



                                        when "center"
                                                puts " "
                                            puts Nba2kMe::Player.all[7].name + " " + Nba2kMe::Player.all[7].team + "    " + "Overall Rating = " + Nba2kMe::Player.all[7].rating
                                                puts " "
                                            puts "Enter any key or phrase to get back to the main menu or more for more info"
                                            input = gets.strip.downcase 
                                            case input 
                                                
                                            when "more"
                                                 puts " "
                                            puts "Visit - " + " " +  Nba2kMe::Player.all[7].breakdown + " " + " For more percise attributes"
                                        else 
                                            input
                                        end
                                        when "team"
                                            @last_inputs
                                        when "exit"
                                            goodbye
                                        else 
                                            puts "Unknown Command! Please check spelling or type exit to exit"
                                         end
                                        end
        end
end 

def goodbye 
    puts "See you next game. GOODLUCK!"
end 

end
