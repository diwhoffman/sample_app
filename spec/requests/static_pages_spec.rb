require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get home_path
      response.status.should be(200)
    end
  end

  subject { page }
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit home_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path}

    let(:heading) { 'About Us'}
    let(:page_title) { 'About Us'}

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path}

    let(:heading) { 'Contact'}
    let(:page_title) { 'Contact'}

    it_should_behave_like "all static pages"
  end

end


private

def static_pages_index_path
  '/static_pages/home'
end