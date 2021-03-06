require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_selector 'title', text: full_title('') }
    it { should have_selector 'h1', text: "Welcome" }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector 'title', text: full_title('Help') }
    it { should have_selector 'h1', text: "Help" }
  end

  describe "About Us page" do
    before { visit about_path }
    it { should have_selector 'title', text: full_title('About Us') }
    it { should have_selector 'h1', text: "About Us" }
  end

  describe "Contact Us page" do
    before { visit contact_path }
    it { should have_selector 'title', text: full_title('Contact') }
    it { should have_selector 'h1', text: "Contact Us" }
  end

  it "Should have working links" do
    visit root_path
    page.should have_selector 'title', text: full_title('')
    click_link 'Help'
    page.should have_selector 'title', text: full_title('Help')
    click_link 'About'
    page.should have_selector 'title', text: full_title('About Us')
    click_link 'Contact'
    page.should have_selector 'title', text: full_title('Contact')
    click_link 'sample app'
    page.should have_selector 'title', text: full_title('')
  end

end
