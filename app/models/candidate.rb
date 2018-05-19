class Candidate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum gender: {female: 0, male: 1 }
  validates :email, :name, :date_of_birth, :category_id, :location, :username, :gender, :phone_number, presence: true
  validates :email, :username, uniqueness: { case_sensitive: true }



  has_many :job
  has_one :resume
  belongs_to :category
end
