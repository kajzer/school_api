# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  index_nr   :string
#  absence    :integer
#  avatar_url :string
#  phone_nr   :string
#  fav_prog   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
