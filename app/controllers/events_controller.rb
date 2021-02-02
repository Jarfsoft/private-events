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

  def create
    @event = current_user.events.create(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'The event was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location)
  end
end
