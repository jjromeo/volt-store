if ENV['BROWSER']
  require 'spec_helper'

  describe 'Loading page', type: :feature do
    it 'should load the page' do
      visit '/'

      expect(page).to have_content('Home')
    end
  end
end
