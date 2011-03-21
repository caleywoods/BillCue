class EventsController < ApplicationController
   respond_to :html

  # GET /artists/new
  def new
    @event = Event.new
    respond_with(@event)
  end 

  def create

  end
end
