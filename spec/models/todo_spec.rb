# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Todo, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Association test
  it { is_expected.to have_many(:items).dependent(:destroy) }

  # Validation test
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:created_by) }
end
