class WelcomeController < ApplicationController
  	def index
	# @first_visit = session["first_visit"]
	 #  	@last_visit = session["last_visit"]
	 #  	session["sentence"] = ['the', 'black', 'cat']
	 #  	sentenceLength = session['sentence'].length

	 #  	if session['counter'] == nil 
	 #  		@message = session['sentence'].join(' ')
	 #  		session['counter'] = 1
	 #  	elsif session['counter'] > 0 && session['counter'] <= session['sentence'].length
	 #  		@message = session['sentence'][session['counter'] - 1]
	 #  		session['counter'] += 1
	 #  	elsif session['counter'] > session['sentence'].length - 1
	 #  		@message = "Finished!"
	 #  		session['counter'] += 1
	 #		end
 	end

	def set_name
	 		@user_name = params["user_name"]
	 		session["user_name"] = @user_name
	end

	def set_background_color
	 		@background_color = params['background_color']
	 		session['background_color'] = @background_color
	end


 end
