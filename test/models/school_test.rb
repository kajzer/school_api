# == Schema Information
#
# Table name: schools
#
#  id               :integer          not null, primary key
#  campus           :string
#  degree           :string
#  secondary_school :string
#  university       :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#
# Indexes
#
#  index_schools_on_user_id  (user_id)
#

require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
