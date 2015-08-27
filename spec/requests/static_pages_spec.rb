require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'SOME TODO LIST'" do
      visit root_path
      expect(page).to have_content('SOME TODO LIST')
    end

    it "should have the title 'Home'" do
      visit root_path
      expect(page).to have_title("ScaffoldApp | Home")
    end
  end
end

