class EventsController < ApplicationController

  def index
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "Created new event."
      redirect_to @event
    else
      flash[:alert] = "Unable to create event."
      render :action => "new"
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
