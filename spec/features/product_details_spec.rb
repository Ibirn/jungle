require 'rails_helper'

RSpec.feature "Visiter can navigate product page", type: :feature, js:true do
  
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

    scenario "They can see product by clicking the header" do
      visit root_path
      first('article.product').find("header").click
      expect(page).to have_css 'article.product-detail'
      save_screenshot
    end

    scenario "They can see product details by clicking the details button" do
      visit root_path
      first('article.product').find_link("Details").click
      expect(page).to have_css 'article.product-detail'
      save_screenshot
    end


end
