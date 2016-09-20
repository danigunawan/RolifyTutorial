class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
     
  after_initialize :set_default_role, if: :new_record?
  
  def set_default_role
   self.roles ||= self.add_role :guest
  end
         
end
