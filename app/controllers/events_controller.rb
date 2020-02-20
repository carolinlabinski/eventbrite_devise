class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @events = Event.all.order(:start_date)
  end

  def new
    @event=Event.new
  end

def create
  @event = Event.new(title: params[:title],description: params[:description],location: params[:location], start_date: params[:start_date],duration: params[:duration], price: params[:price], admin_id: current_user.id)
  
   if @event.save
    redirect_to(root_path, notice: "Event successfully created!")
   else
    render '/events/new.html.erb'
   
  end
  end

  def show
    @event = Event.find(params[:id])
   end

end
