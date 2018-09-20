# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  absence    :integer
#  avatar_url :string
#  fav_prog   :string
#  index_nr   :string
#  last_name  :string
#  name       :string
#  phone_nr   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
    has_many :schools
    has_many :addresses
end
