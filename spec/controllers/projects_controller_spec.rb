require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

  describe 'GET #index' do
    it 'returns http success' do
      get :index #This is the index action in the projects controller

      expect(response).to have_http_status(:success)
    end

    it 'renders the projects index template' do
      get :index

      expect(response).to render_template('index') #This apparently means to renter the index view
    end
  end
  
  describe 'GET #show' do
    it 'returns http success' do
      get :show

      expect(response).to have_http_status(:success)
    end

    it 'renders the projects show template' do
      get :show

      expect(response).to render_template('show')
    end
  end
  
end
