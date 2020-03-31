require 'rails_helper'

RSpec.describe "Players", type: :request do
	describe 'GET #index' do 
		let!(:players) {create_list :player, 5}

		 subject do
			 get :index
			 response
		 end
		 it "show all players" do
			is_expected.to be_successful 
		 end
	end
end
