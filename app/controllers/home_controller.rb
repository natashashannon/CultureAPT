class HomeController < ApplicationController
  def map
  	@venues = Venue.all
    if params[:search]
      @events = Event.search(params[:search]).order("start_date ASC")
      @eventVenuesArr = []
      @events.each do |i|
         arr = []
        eventName = @events.find_by_id(i).name
        venueName = Venue.find_by_id(@events.find_by_id(i).venue_id).name
        lat = Venue.find_by_id(@events.find_by_id(i).venue_id).latitude
        lon = Venue.find_by_id(@events.find_by_id(i).venue_id).longitude
        des = @events.find_by_id(i).description
        arr.push(eventName)
        arr.push(venueName)
        arr.push(lat)
        arr.push(lon)
        arr.push(des)
        @eventVenuesArr.push(arr)
      end
    else
      @events = Event.where(:start_date => Date.today..Date.today.next_month.beginning_of_month).order('start_date ASC')
      @eventVenuesArr = []
      @events.each do |i|
        arr = []
        eventName = @events.find_by_id(i).name
        venueName = Venue.find_by_id(@events.find_by_id(i).venue_id).name
        lat = Venue.find_by_id(@events.find_by_id(i).venue_id).latitude
        lon = Venue.find_by_id(@events.find_by_id(i).venue_id).longitude
        des = @events.find_by_id(i).description
        arr.push(eventName)
        arr.push(venueName)
        arr.push(lat)
        arr.push(lon)
        arr.push(des)
        @eventVenuesArr.push(arr)
      end    
    end
  end

  def list
  end
end
