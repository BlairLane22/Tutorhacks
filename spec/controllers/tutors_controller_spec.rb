require 'rails_helper'

RSpec.describe TutorsController, type: :controller do

  before(:each) do
    tutor = FactoryBot.build(:tutor)

    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = FactoryBot.create(:user)
    # user.confirm! #only if account is confirmable
    sign_in user
  end

  context "GET #index" do
    before do
      get :index
    end

    it "should have http status 200 and render the index page" do
      expect(response).to have_http_status(200)
      expect(response).to render_template :index
    end
  end

  context 'GET #show' do
    let!(:tutor) { create :tutor }

    it 'should success and render to edit page' do
      get :show, params: { id: tutor.id }
      expect(response).to have_http_status(200)
      expect(response).to render_template :show
    end
  end



end
