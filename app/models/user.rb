class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :posts 

   has_and_belongs_to_many(:users,
   	:join_table => :follower_cnnnections,
   	:foreign_key => :person_following_id,
   	:association_foreign_key => :person_followed_id
   	)

end
