class Admin::DashboardController < ApplicationController
  # raise ENV.inspect
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PW']
  def show
    @products = Product.count
    @categories = Category.count
  end
end
