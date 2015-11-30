class CalendarsController < ApplicationController
  def index
    @cronofy = Cronofy::Client.new
    @events = @cronofy.read_events
  end
end
