class EventsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  # GET /posts or /posts.json
  def index
    @events = Event.all
  end

  # GET /posts/1 or /posts/1.json
  def show
    @event = Event.find(params[:id])
  end

  # GET /posts/new
  def new
    @event = Event.new
  end

  # GET /posts/1/edit
  def edit; end
end
