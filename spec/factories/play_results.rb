# == Schema Information
#
# Table name: play_results
#
#  id                 :integer          not null, primary key
#  boin_voice         :string           not null
#  judge              :string           not null
#  normal_voice       :string           not null
#  practiced_boin     :string           not null
#  practiced_normal   :string           not null
#  practiced_sentence :string           not null
#  score              :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#
# Indexes
#
#  index_play_results_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :play_result do
    boin_voice { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/blob')) }
    normal_voice  { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/blob')) }
    judge { "S" }
    practiced_boin { "こんにちは" }
    practiced_normal { "こんにちは" }
    practiced_sentence { "こんにちは" }
    score { "67" }
    user
  end
end
