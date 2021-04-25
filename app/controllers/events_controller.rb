class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

 def index
   @events = Event.all
 end

 def show
   @event = Event.find(params[:id])
 end


 def create
   @event = Event.new('title' => params[:title], 
     'description' => params[:description],
     'duration' => params[:duration],
     'start_date' => params[:start_date],
     'price' => params[:price],
     'location' => params[:location])
   
   if @event.save
     puts "The event was succesfully saved !"
     flash[:success] = "Britney OKAY"
     redirect_to '/'
   else
     puts "Error : create problem"
     flash[:danger] = "Britney Problem"
     render '/events/new'
   end
 end

 def update
 end

 def edit
 end

 def new
   @event = Event.new
 end

end
