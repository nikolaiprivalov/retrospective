# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Boards::CardsController do
  let_it_be(:board) { create(:board) }
  let(:current_user) { create(:user) }
  before { login_as current_user }

  context 'POST #create' do
    it 'redirects' do
      post :create, params: { board_slug: board.slug,
                              card: FactoryBot.attributes_for(:card) }
      expect(response).to have_http_status(:redirect)
    end
  end
end
