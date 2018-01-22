require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe 'GET #home' do
    it 'returns http success' do
      get :home

      expect(response).to have_http_status(:success)
    end

    it 'renders the home template' do
      get :home

      expect(response).to render_template('home')
    end
  end
  
  describe 'GET #about' do
    it 'returns http success' do
      get :about

      expect(response).to have_http_status(:success)
    end

    it 'renders the about template' do
      get :about

      expect(response).to render_template('about')
    end
  end
  
  describe 'GET #resume' do
    it 'returns http success' do
      get :resume

      expect(response).to have_http_status(:success)
    end

    it 'renders the resume template' do
      get :resume

      expect(response).to render_template('resume')
    end
  end
  
  describe 'GET #faq' do
    it 'returns http success' do
      get :faq

      expect(response).to have_http_status(:success)
    end

    it 'renders the faq template' do
      get :faq

      expect(response).to render_template('faq')
    end
  end
  
end
