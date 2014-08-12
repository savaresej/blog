class WelcomeController < ApplicationController
  def index
  	# get current date and time and create a string version of date and time
  	current_dt = Time.now.strftime("%B %d, %Y, %A %H:%M")

  	# store the current date and time in the session
  	if session['first_visit'] == nil
  		session["first_visit"] = current_dt
  	end
  	
  	# pull the date and time from the session and make it available to the view
  	@first_visit = session["first_visit"]
  end
end
