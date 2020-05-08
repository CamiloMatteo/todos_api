# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Todo API', type: :request do
  # init test data
  let!(:todos) { create_list(:todo, 10) }
  let(:todo_id) { todos.first.id }

  # test suite for get /todos
  describe 'GET /todos' do
    # make http get request before each example
    before { get '/todos' }

    it 'returns todos' do
      # note json is a custom helper to parse json responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
  end
end
