class MemorygameController < ApplicationController
  def index
  	@photo_array = {'frog' => ['frog', 'frog.jpg', "A1"], 'antelope' => ['antelope', 'antelope.jpg','B1'], 'kitten' => ['kitten', 'kitten.jpg', 'B2'], 'tiger' => ['tiger', 'tiger.jpg', 'A2']}
  	@user_answers = {}
  	@user_responses = {}
  end

  def photo_array
	
  end

  def game_counter
  	@game_counter = 0
  	session['game_counter'] = @game_counter
  end


end
