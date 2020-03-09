require 'nokogiri'
require 'open-uri'
require 'pry'


class Nba2kMe::Player
    attr_accessor :name, :team, :rating, :breakdown, :last_inputs
    
    @@all =[]
    
        def initialize 
             @@all << self 
        end 


        def self.all
            @@all
        end 




end