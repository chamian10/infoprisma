class PagesController < ApplicationController

  before_action :authenticate_user!, :except => [:home, :contact, :team]


  def index
       @news = News.all
  end

  def team

  end

  def svg

  end

  def home

  end

  def contact

  end

end
