class EventsController < ApplicationController
  
  def index
    @events = Event.all.order(:start_date)
  end

  def new
    @event=Event.new
  end

  def show
    @event = Event.find(params[:id])
   end

def create
  @event = Event.new(title: params[:title],description: params[:description],location: params[:location], start_date: params[:start_date],duration: params[:duration], price: params[:price])
  
   if @event.save
    redirect_to(root_path, notice: "Event successfully created!")
   else
    render '/events/new.html.erb'
   
  end
  end

end
