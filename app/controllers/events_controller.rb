class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new create index]

  # GET /posts or /posts.json
  def index
    @events = Event.all
    @event = Event.new
    @upcoming_events = @events.upcoming_events
    @past_events = @events.past_events
    @attendance = Attendance.new
  end

  # GET /posts/1 or /posts/1.json
  def show
    @event = Event.find(params[:id])
    @attendees = Attendance.where('attended_event_id = ?', @event.id)
  end

  # GET /posts/new
  def new
    @event = Event.new
  end

  # GET /posts/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.build(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'The event was successfully created.' }
      else
        format.html { render :new, alert: 'Please Sign In.' }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'The event was successfully destroyed.' }
      else
        format.html { render :new, alert: 'An error ocurred while trying to destroy this event.' }
      end
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: 'Your event was updated'
    else
      render :edit
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :location)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
