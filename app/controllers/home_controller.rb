class HomeController < ApplicationController
  layout 'landing'
  def index; end

  def join
    render layout: 'sessions'
  end
end
