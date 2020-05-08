# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Association test
  it { is_expected.to belong_to(:todo) }
  # Validation test
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:done) }
end
