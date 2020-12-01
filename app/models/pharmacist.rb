class Pharmacist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates       :pharmacist_nickname
    validates       :number
    validates       :family_name
    validates       :first_name
    validates       :family_name_kana
    validates       :first_name_kana
    validates       :phone_number
  end
end
