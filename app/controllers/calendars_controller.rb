class CalendarsController < ApplicationController
  def index
    cronofy = Cronofy::Client.new()
  end
end
