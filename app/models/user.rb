class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { buyer: 0, seller: 1,  admin: 2 } 
  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :orders
  

  def subscribed?
  	stripe_subscription_id?
  end

  def active_for_authentication? 
    super && approved? 
  end 
  
  def inactive_message 
    approved? ? super : :not_approved
  end
    
  
  
  
  

  

  

  
  

end
