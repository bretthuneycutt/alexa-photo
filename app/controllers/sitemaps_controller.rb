class SitemapsController < ApplicationController
  def index
    @urls_and_images = {
      root_url => [],
      photography_details_url => [],
      classes_url => [],
      about_url => [],
      families_url => FamilyPhoto.all.map(&:url),
      kids_url => KidPhoto.all.map(&:url),
      newborns_url => NewbornPhoto.all.map(&:url),
    }
  end
end
