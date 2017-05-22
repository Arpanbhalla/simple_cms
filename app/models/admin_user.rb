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

class AdminUser < ApplicationRecord
   has_secure_password
   has_and_belongs_to_many :pages
   has_many :section_edits
   has_many :sections, :through => :section_edits
end
