# == Schema Information
#
# Table name: reservations
#
#  id             :bigint           not null, primary key
#  checkin        :date             not null
#  checkout       :date             not null
#  validated      :boolean          default(FALSE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  guest_id       :bigint           not null
#  real_estate_id :bigint           not null
#
# Indexes
#
#  index_reservations_on_guest_id        (guest_id)
#  index_reservations_on_real_estate_id  (real_estate_id)
#
# Foreign Keys
#
#  fk_rails_...  (guest_id => users.id)
#  fk_rails_...  (real_estate_id => real_estates.id)
#
class Reservation < ApplicationRecord
  belongs_to :real_estate
  belongs_to :guest, class_name: :User
  
  has_one :host, through: :real_estate  
end