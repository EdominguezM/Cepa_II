require 'rails_helper'
require 'wines_controller'



RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
end

RSpec.describe WinesController, type: :controller do
  describe 'GET index' do
    it 'returns a successful response' do
      wines = Wine.all
      get :index
      expect(assigns(:wines)).to eq(wines)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'renders the show template' do
      get :show
      expect(response).to render_template(:show)
    end

  end
  
end


