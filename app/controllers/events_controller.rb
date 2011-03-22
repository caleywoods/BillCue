class EventsController < ApplicationController
   respond_to :html

  # GET /artists/new
  def new
    @event = Event.new
    respond_with(@event)
  end 

  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save!
        format.html { redirect_to(root_path, :notice => 'Your event was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end
end
