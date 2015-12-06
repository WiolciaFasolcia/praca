class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :dziedzinas
 has_many :documents
           def admin? 
         	admin == true
         end
         def recenzent?
         	recenzent == true         	
         end
         def redaktor?
          Redaktor == true           
         end
end
