class WelcomeController < ApplicationController
	def index
	end

  def kids
    @urls = (1..48).map {|i| URL.assets("kids/#{i}.jpg") }
    @urls.concat (1..24).map {|i| URL.assets"kids/v#{i}.jpg" }
    render "photography_type"
  end

  def newborns
    @urls = (1..13).map {|i| URL.assets("newborns/#{i}.jpg")}
    render "photography_type"
  end

  def families
    @urls = (2..4).map {|i| URL.assets("families/#{i}.jpg")}
    render "photography_type"
  end
end
