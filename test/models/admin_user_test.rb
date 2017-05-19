# == Schema Information
#
# Table name: admin_users
#
#  id         :integer          not null, primary key
#  username   :string(50)
#  first_name :string(50)
#  last_name  :string(50)
#  email      :string           default(""), not null
#  password   :string(50)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AdminUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
