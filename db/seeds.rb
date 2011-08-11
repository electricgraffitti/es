# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
require 'open-uri'  

# Add States to DB
States.delete_all
States.connection.execute('ALTER TABLE states AUTO_INCREMENT = 0')
States.create :abbreviation => "AL", :full_name => "Alabama"
States.create :abbreviation => "AK", :full_name => "Alaska"
States.create :abbreviation => "AZ", :full_name => "Arizona"
States.create :abbreviation => "AR", :full_name => "Arkansas"
States.create :abbreviation => "CA", :full_name => "California"
States.create :abbreviation => "CO", :full_name => "Colorado"
States.create :abbreviation => "CT", :full_name => "Connecticut"
States.create :abbreviation => "DE", :full_name => "Delaware"
States.create :abbreviation => "DC", :full_name => "District of Columbia"
States.create :abbreviation => "FL", :full_name => "Florida"
States.create :abbreviation => "GA", :full_name => "Georgia"
States.create :abbreviation => "HI", :full_name => "Hawaii"
States.create :abbreviation => "ID", :full_name => "Idaho"
States.create :abbreviation => "IL", :full_name => "Illinois"
States.create :abbreviation => "IN", :full_name => "Indiana"
States.create :abbreviation => "IA", :full_name => "Iowa"
States.create :abbreviation => "KS", :full_name => "Kansas"
States.create :abbreviation => "KY", :full_name => "Kentucky"
States.create :abbreviation => "LA", :full_name => "Louisiana"
States.create :abbreviation => "ME", :full_name => "Maine"
States.create :abbreviation => "MD", :full_name => "Maryland"
States.create :abbreviation => "MA", :full_name => "Massachusetts"
States.create :abbreviation => "MI", :full_name => "Michigan"
States.create :abbreviation => "MN", :full_name => "Minnesota"
States.create :abbreviation => "MS", :full_name => "Mississippi"
States.create :abbreviation => "MO", :full_name => "Missouri"
States.create :abbreviation => "MT", :full_name => "Montana"
States.create :abbreviation => "NE", :full_name => "Nebraska"
States.create :abbreviation => "NV", :full_name => "Nevada"
States.create :abbreviation => "NH", :full_name => "New Hampshire"
States.create :abbreviation => "NJ", :full_name => "New Jersey"
States.create :abbreviation => "NM", :full_name => "New Mexico"
States.create :abbreviation => "NY", :full_name => "New York"
States.create :abbreviation => "NC", :full_name => "North Carolina"
States.create :abbreviation => "ND", :full_name => "North Dakota"
States.create :abbreviation => "OH", :full_name => "Ohio"
States.create :abbreviation => "OK", :full_name => "Oklahoma"
States.create :abbreviation => "OR", :full_name => "Oregon"
States.create :abbreviation => "PA", :full_name => "Pennsylvania"
States.create :abbreviation => "RI", :full_name => "Rhode Island"
States.create :abbreviation => "SC", :full_name => "South Carolina"
States.create :abbreviation => "SD", :full_name => "South Dakota"
States.create :abbreviation => "TN", :full_name => "Tennessee"
States.create :abbreviation => "TX", :full_name => "Texas"
States.create :abbreviation => "UT", :full_name => "Utah"
States.create :abbreviation => "VT", :full_name => "Vermont"
States.create :abbreviation => "VA", :full_name => "Virginia"
States.create :abbreviation => "WA", :full_name => "Washington"
States.create :abbreviation => "WV", :full_name => "West Virginia"
States.create :abbreviation => "WI", :full_name => "Wisconsin"
States.create :abbreviation => "WY", :full_name => "Wyoming"

Country.delete_all  
open("http://openconcept.ca/sites/openconcept.ca/files/country_code_drupal_0.txt") do |countries|  
  countries.read.each_line do |country|  
    code, name = country.chomp.split("|")  
    Country.create!(:name => name, :code => code)  
  end  
end