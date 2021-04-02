class LandingpagesController < ApplicationController
  def homepage
    @activities = Activity.all
  end
end
