if ENV['BROWSER']
  require 'spec_helper'

  describe 'Products spec', type: :feature do
    it 'should show a welcome message on the first page' do
      visit '/'

      expect(page).to have_content('Welcome to the volt store!')
    end

    it 'should have a link to view products' do
      visit '/'
      click_link 'Products'
      expect(page).to have_content 'Products currently available'
    end

    it 'let\'s you add a product' do
      visit '/'
      click_link 'Manage Products'
      click_link 'Add a new product'
      fill_in 'name', with: 'Lovely shoes'
      click_button 'Add product'
      visit '/'
      click_link 'Products'
      expect(page).to have_content 'Lovely shoes'
    end
  end
end
