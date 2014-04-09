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
  describe "Home page" do
    before { visit home_path}

      it {should have_content('Sample App')}
      it {should have_title(full_title(""))}
      it { should_not have_title('| Home')}
  end

  describe "Help page" do
    before { visit help_path}

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    before { visit about_path}

    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact page" do
    before { visit contact_path}

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end


private

def static_pages_index_path
  '/static_pages/home'
end