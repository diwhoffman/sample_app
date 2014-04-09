require 'spec_helper'

describe "UserPages" do
  describe "User pages" do

    subject { page}

    describe "signup pages" do
      before { visit signup_path}

      it { should have_content('Sign up')}
      it { should have_title(full_title('Sign up'))}
    end
  end
end
