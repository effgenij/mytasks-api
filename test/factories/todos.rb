FactoryBot.define do
  factory :todo do
    text { Faker::Lorem.sentence(word_count: 10) }
    isCompleted { false }
    association :project
  end
end
