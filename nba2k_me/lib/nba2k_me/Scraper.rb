

class Nba2kMe::Scraper


    def self.scrape_players
                        #TOP PLAYER
        doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
        top_table = doc.css(".table")[0]
 
        player_rows= top_table.css("tbody")
    

        player_rows.each do |post|

            player_name = post.css("a").first.text 
            player_team = post.css("small").first.text
            player_rating = post.css(".roster-rating").first.text
                
                      #Scrape more info url by name 
            player_desription = post.css("a").first.text.split(" ")
                 last = player_desription[1]
                first = player_desription[0]
            more_info = "www.2kratings.com/" + first + "-" + last
            
                
            player_1 = Nba2kMe::Player.new 
            player_1.name = player_name
            player_1.team = player_team
            player_1.rating = player_rating
            player_1.breakdown = more_info
          
        end
                                #TOP SHOOTER
                doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
                top_table = doc.css(".table")[1]
        
                player_rows= top_table.css("tbody")
          


                player_rows.each do |post|
                
                    player_name = post.css("a").first.text 
                    player_team = post.css("small").first.text
                    player_rating = post.css(".roster-rating").first.text
                        
                       
                    player_desription = post.css("a").first.text.split(" ")
                    last = player_desription[1]
                    first = player_desription[0]
                    more_info = "www.2kratings.com/" + first + "-" + last
                    
                    player_2 = Nba2kMe::Player.new 
                    player_2.name = player_name
                    player_2.team = player_team
                    player_2.rating = player_rating
                    player_2.breakdown = more_info
                end

                                        #TOP SLASHER
                            doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
                            top_table = doc.css(".table")[2]
                    
                            player_rows= top_table.css("tbody")
                              
                               player_rows.each do |post|
                            
                                player_name = post.css("a").first.text 
                                player_team = post.css("small").first.text
                                player_rating = post.css(".roster-rating").first.text

                                player_desription = post.css("a").first.text.split(" ")
                                last = player_desription[1]
                                first = player_desription[0]
                                more_info = "www.2kratings.com/" + first + "-" + last
                                
                                player_3 = Nba2kMe::Player.new 
                                player_3.name = player_name
                                player_3.team = player_team
                                player_3.rating = player_rating
                                player_3.breakdown = more_info
                            end
                            
                                                            #TOP POINT GUARD 
                                        doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
                                        top_table = doc.css(".table")[3]
                                
                                        player_rows= top_table.css("tbody")
                                       


                                        player_rows.each do |post|
                                        
                                            player_name = post.css("a").first.text 
                                            player_team = post.css("small").first.text
                                            player_rating = post.css(".roster-rating").first.text

                                            player_desription = post.css("a").first.text.split(" ")
                                            last = player_desription[1]
                                            first = player_desription[0]
                                            more_info = "www.2kratings.com/" + first + "-" + last

                                         
                                            player_4 = Nba2kMe::Player.new 
                                            player_4.name = player_name
                                            player_4.team = player_team
                                            player_4.rating = player_rating
                                            player_4.breakdown = more_info
                                        end
                                                                     
                                                                            #TOP SHOOTING GUARD
                                                                doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
                                                                top_table = doc.css(".table")[4]
                                                        
                                                                player_rows= top_table.css("tbody")
                                                                player_rows.each do |post|
                                                                
                                                                    player_name = post.css("a").first.text 
                                                                    player_team = post.css("small").first.text
                                                                    player_rating = post.css(".roster-rating").first.text


                                                                    player_desription = post.css("a").first.text.split(" ")
                                                                    last = player_desription[1]
                                                                    first = player_desription[0]
                                                                    more_info = "www.2kratings.com/" + first + "-" + last
                        
                                                                    
                                                                    player_5 = Nba2kMe::Player.new 
                                                                    player_5.name = player_name
                                                                    player_5.team = player_team
                                                                    player_5.rating = player_rating
                                                                    player_5.breakdown = more_info

                                        
                                                                    
                                                                end

                                                                                          #TOPSMALLFOWARD
                                                                                    doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
                                                                                    top_table = doc.css(".table")[5]
                                                                            
                                                                                    player_rows= top_table.css("tbody")
                                                                                    
                                                                                        player_rows.each do |post|
                                                                                    
                                                                                        player_name = post.css("a").first.text 
                                                                                        player_team = post.css("small").first.text
                                                                                        player_rating = post.css(".roster-rating").first.text

                                                                                        player_desription = post.css("a").first.text.split(" ")
                                                                                        last = player_desription[1]
                                                                                        first = player_desription[0]
                                                                                        more_info = "www.2kratings.com/" + first + "-" + last
                        
                                                                    
                                                                                        
                                                                                        player_6 = Nba2kMe::Player.new 
                                                                                        player_6.name = player_name
                                                                                        player_6.team = player_team
                                                                                        player_6.rating = player_rating
                                                                                        player_6.breakdown = more_info
                                                                                    end
                                                               
                                                                #TOP POWER FOWARD
                                                    
                                                    doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
                                                    top_table = doc.css(".table")[6]
                                            
                                                    player_rows= top_table.css("tbody")
                                                     
                                                        player_rows.each do |post|
                                                    
                                                        player_name = post.css("a").first.text 
                                                        player_team = post.css("small").first.text
                                                        player_rating = post.css(".roster-rating").first.text


                                                        player_desription = post.css("a").first.text.split(" ")
                                                        last = player_desription[1]
                                                        first = player_desription[0]
                                                        more_info = "www.2kratings.com/" + first + "-" + last

                                                        
                                                        player_7 = Nba2kMe::Player.new 
                                                        player_7.name = player_name
                                                        player_7.team = player_team
                                                        player_7.rating = player_rating
                                                        player_7.breakdown = more_info
                                                    end

                                        #TOP CENTER
                        doc = Nokogiri::HTML(open("https://www.2kratings.com/"))
                        top_table = doc.css(".table")[7]
                
                        player_rows= top_table.css("tbody")
                       
                            player_rows.each do |post|
                        
                            player_name = post.css("a").first.text 
                            player_team = post.css("small").first.text
                            player_rating = post.css(".roster-rating").first.text


                            player_desription = post.css("a").first.text.split(" ")
                            last = player_desription[1]
                            first = player_desription[0]
                            more_info = "www.2kratings.com/" + first + "-" + last

                            
                            player_8 = Nba2kMe::Player.new 
                            player_8.name = player_name
                            player_8.team = player_team
                            player_8.rating = player_rating
                            player_8.breakdown = more_info
                        end
        
    end 
 end


