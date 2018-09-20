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

class Address < ApplicationRecord
  belongs_to :user
end
