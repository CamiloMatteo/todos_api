# frozen_string_literal: true

class Item < ApplicationRecord
  # model association
  belongs_to :todo

  # validation
  validates_presence_of :name
  validates_presence_of :done
end
