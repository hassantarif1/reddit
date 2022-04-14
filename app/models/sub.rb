# == Schema Information
#
# Table name: subs
#
#  id           :bigint           not null, primary key
#  title        :string(100)      not null
#  description  :string(500)      not null
#  moderator_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Sub < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :moderator_id, presence: true

    belongs_to :moderator,
        :class_name => 'User',
        :primary_key => :id,
        :foreign_key => :moderator_id,
        :dependent => :destroy
end
