class HomeController < ApplicationController
  def index
    @ephemeries = Ephemery.all
  end
end
