class HomeController < ApplicationController
  def index
    @layers = [
      Node.where(layer: 1),
      Node.where(layer: 2),
      Node.where(layer: 3)
    ]
  end
end
