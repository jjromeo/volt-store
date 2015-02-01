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
  end
end
