class User < ApplicationRecord
  has_many :resumes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def admin?
     email == 'a@qq.com'
   end
end
