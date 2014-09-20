#please drop the tables before seeding or the primary keys will be will not be deleted

require 'open-uri'

Org.delete_all
open("http://natashashannon.com/web/orgs.csv") do |orgs|
  i=0
    orgs.read.each_line do |org|
      if i==0 then
        #do nothing
        puts "skip first line for orgs"
      else
        name, url = org.chomp.split(",")
        Org.create!(:name => name, :url => url)
      end
       i+=1;
        puts i
    end

end


Venue.delete_all
open("http://natashashannon.com/web/venues.csv") do |venues|
  j=0
  venues.read.each_line do |venue|
    if j==0 then
      puts "skip first line for venues"
    else
      name, street, city, state, zip, url, phone,  latitude, longitude = venue.chomp.split(",")
      Venue.create!(:name => name, :street => street, :city => city, :state => state, :zip => zip, :url => url, :phone => phone, :latitude => latitude, :longitude => longitude)
    end
    j += 1;
  end
end

Event.delete_all
open("http://natashashannon.com/web/events.csv") do |events|
  k=0
  events.read.each_line do |event|
    if k==0 then
      puts "skip first line for events"
    else
        p event.chomp.split(",")
      org_id, venue_id, name, start_date, end_date, start_time, end_time, description, url, spec_instruction, ticket_rsvp_instruction, price_low, price_high, restriction, category, subcategory = event.chomp.split(",")
      Event.create!(:org_id => org_id, :venue_id => venue_id, :name => name, :start_date => start_date, :end_date => end_date, :start_time => start_time, :end_time => end_time, :description => description, :url => url, :spec_instruction => spec_instruction, :ticket_rsvp_instruction => ticket_rsvp_instruction, :price_low => price_low, :price_high => price_high, :restriction => restriction, :category => category, :subcategory => subcategory)
    end
    k += 1
  end
end
