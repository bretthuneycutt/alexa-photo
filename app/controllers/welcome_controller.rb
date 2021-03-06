class WelcomeController < ApplicationController
  layout :layout

	def index
	end

  def kids
    @photos = KidPhoto.all
    render "photography_type"
  end

  def newborns
    @photos = NewbornPhoto.all
    render "photography_type"
  end

  def families
    @photos = FamilyPhoto.all
    render "photography_type"
  end

private 

  def layout
    action_name == 'index' ? 'application' : 'side_navigation'
  end
end
