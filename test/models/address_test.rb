# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  city          :string
#  street_adress :string
#  zip_code      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#
# Indexes
#
#  index_addresses_on_user_id  (user_id)
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
