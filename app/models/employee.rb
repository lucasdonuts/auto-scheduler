class Employee < ApplicationRecord
  has_many :shifts
  has_many :employee_roles, dependent: :destroy
  has_many :roles, through: :employee_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
