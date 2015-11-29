class CalendarsController < ApplicationController
  def index
    calendars = cronofy.list_calendars
  end
end
