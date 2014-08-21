class MemorygameController < ApplicationController
	
  before_action :memory_game

  def index
  	@photo_array = {'frog' => ['frog', 'frog.jpg', "A1"], 'antelope' => ['antelope', 'antelope.jpg','B1'], 'kitten' => ['kitten', 'kitten.jpg', 'B2'], 'tiger' => ['tiger', 'tiger.jpg', 'A2']}
  	@user_answers = {}
  	@user_responses = {}
  end

  def photo_array
	
  end

  def memory_game
  	session['game_counter'] = @game_counter
  	session['score'] = 0 
  	# session['memory_answer_array'] = {'frog' => ['frog',, 'antelope' => ['antelope', 'antelope.jpg'], 'kitten' => ['kitten', 'kitten.jpg'], 'tiger' => ['tiger', 'tiger.jpg']}
  	# @memory_game_response = session['memory_answer_array']
  	# Display Message in the header
  	# session['memory_answer_array'].push(params[])

	  	if session['game_counter'] == 0
	  		@image = 'frog.jpg'
	  		session['game_counter'] = 1
	  		session['memory_answer_array']['frog'].push(params['frog_guess'])
	  	elsif session['game_counter'] == 1
	  		@image = 'antelope.jpg'
	  		session['game_counter'] = 2
	  		session['memory_answer_array']['antelope'].push(params['antelope_guess'])
	  	elsif session['game_counter'] == 2
	  		@image = 'kitten'
	  		session['game_counter'] = 3
	  		session['memory_answer_array']['kitten'].push(params['kittem_guess'])
	  	elsif session['game_counter'] == 3
	  		@image = 'tiger.jpg'
	  		session['game_counter'] = 4
	  		session['memory_answer_array']['tiger'].push(params['tiger_guess'])
	  	elsif session['game_counter'] == 4
	  		@memory_game_response.each do |key|
	  			if key == @photo_array['frog']
	  				session['score'] += 1
				end
	  			if key == @photo_array['antelope']
	  				session['score'] += 1
				end
	  			if key == @photo_array['kitten']
	  				session['score'] += 1
				end		
	  			if key == @photo_array['tiger']
	  				session['score'] += 1
				end				
  			end
	  		session['game_counter'] = 5
		end
  end


end
