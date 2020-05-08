# frozen_string_literal: true

class TodosController < ApplicationController
  before_action :set_todo, only: %i[show update destroy]

  # get /todos
  def index
    @todos = Todo.all
    json_response(@todos)
  end
end
