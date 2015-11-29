class CalendarsController < ApplicationController
  def index
    @cronofy = Cronofy::Client.new()
    @calendars = @cronofy.list_calendars
  end
end
