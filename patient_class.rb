class Patient
    
    attr_accessor :species, :finder, :location
    
     
    def about_patient
        return "#{@finder} found a #{@species} in #{@location} today."
    end
end

new_raccoon = Patient.new
new_raccoon.species = "raccoon"
new_raccoon.finder = "Amy"
new_raccoon.location = "Lodi"

puts new_raccoon.about_patient