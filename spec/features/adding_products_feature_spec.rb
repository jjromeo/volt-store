require 'spec_helper'
if ENV['BROWSER']
  describe 'Adding products', type: :feature do
    it 'let\'s you add a product' do
      visit '/'
      click_link 'Manage Products'
      click_link 'Add a new product'
      fill_in 'name', with: 'Lovely shoes'
      fill_in 'price', with: '£22'
      click_button 'Add product'
      visit '/'
      click_link 'Products'
      expect(page).to have_content 'Lovely shoes'
      expect(page).to have_content '£22'
    end

    it 'doesn\'t let you add a product with invalid details' do
      visit '/'
      click_link 'Manage Products'
      click_link 'Add a new product'
      fill_in 'name', with: 'aswd'
      click_button 'Add product'
      visit '/'
      click_link 'Products'
      expect(page).not_to have_content 'aswd'
    end
  end
end
