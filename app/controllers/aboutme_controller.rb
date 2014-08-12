class AboutmeController < ApplicationController
  def index
  end
  def pics
  	@imgData = {"Porsche 911" => "porsche-exclusive-911t-cab.jpg", "Ferrari F12" => "ferrari-f12-berlinetta-front-quarter.jpg", "BAC Mono" => "img_bac_mono_car_3.jpg"}
  end
end
