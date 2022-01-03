class PagesController < ApplicationController
  def home
    @projects = Project.all
    fresh_when @projects
  end
  def about
  end
end
