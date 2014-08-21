class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	# get current date and time and create a string version of date and time
  before_action :displayDT
  before_action :displayMessage
  before_action :setUserName
  before_action :setBackgroundColor
  # before_action :memory_game

# Display the user name based on the form at the bottom of the home page
	def setUserName
		@user_name = session['user_name']
	end

# # Display the user name based on the form at the bottom of the home page
  	def setBackgroundColor
 		@background_color = session['background_color']
	end

# Display the Date/Time of First Visit
  	def displayDT
	  	current_dt = Time.now.strftime("%B %d, %Y, %A %H:%M")
	  	session = {"first_visit" => nil, "last_visit" => nil}
	  	# store the current date and time in the session
	  	if session["first_visit"] == nil
	  	   session["first_visit"] = current_dt
	  	end
	  	session["last_visit"] = current_dt
  	end
  	
  	# pull the date and time from the session and make it available to the view

# Display Message in the header
	def displayMessage
		@first_visit = session["first_visit"]
	  	@last_visit = session["last_visit"]
	  	session["sentence"] = ['the', 'black', 'cat']
	  	sentenceLength = session['sentence'].length

	  	if session['counter'] == nil 
	  		@message = session['sentence'].join(' ')
	  		session['counter'] = 1
	  	elsif session['counter'] > 0 && session['counter'] <= session['sentence'].length
	  		@message = session['sentence'][session['counter'] - 1]
	  		session['counter'] += 1
	  	elsif session['counter'] > session['sentence'].length - 1
	  		@message = "Finished!"
	  		session['counter'] += 1
		end
	end



end
