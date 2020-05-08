# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    name { Faker::StarWars.character }
    done { Faker::Boolean.boolean }
    todo_id { nil }
  end
end
