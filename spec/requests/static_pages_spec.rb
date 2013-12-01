require 'spec_helper'

describe "StaticPages" do
	let(:title) {"Ruby on Rails Tutorial Sample App"}

  subject { page }

  describe "Home page" do
    before { visit home_path }           # Creates a block to add before each expect

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path}

    it { should have_content('Help') }
    it { should have_title(full_title('')) }
  end

  describe "About page" do
    before { visit about_path }

  	it { should have_content('About') }
  	it { should have_title(full_title('')) }
  end

  describe "Contact page" do
    before { visit contact_path}

  	it { should have_content('Contact Us') }
  	it { should have_title(full_title('')) }
  end
end
