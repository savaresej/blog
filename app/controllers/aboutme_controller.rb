class AboutmeController < ApplicationController
  def index
  end
  def pics
  	@imgData = {"Porsche 911" => ["porsche-exclusive-911t-cab.jpg", "http://o.aolcdn.com/hss/storage/adam/6e58b30fb96bf0d28d10fa6d290682e7/porsche-exclusive-911t-cab.jpg"],
	"Ferrari F12" => ["ferrari-f12-berlinetta-front-quarter.jpg", "http://www.autotribute.com/wp-content/gallery/ferrari-f12-berlinetta-vs-lamborghini-aventador/ferrari-f12-berlinetta-front-quarter.jpg"],
	"BAC Mono" => ["img_bac_mono_car_3.jpg", "http://www.blessthisstuff.com/imagens/stuff/img_bac_mono_car_3.jpg"]} 

  end
end
