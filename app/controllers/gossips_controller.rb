class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new(title: "", content: "", user: User.last)
  end

  def create
    @gossip = Gossip.new(title: params[:title],
      content: params[:content],
      user: User.find(params[:user]))
      if @gossip.save
        flash[:success] = "Merci pour ton potin !"
        redirect_to root_path
      else
        render 'new'
      end
  end

  def edit
  end

  def update
  end
end
