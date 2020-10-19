class Admin::SalesController < ApplicationController

  def new

  end

  def index
    @sales = Sale.all
  end
  
end
