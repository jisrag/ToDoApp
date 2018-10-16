class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :todo_lists

         def view
          @user=current_user
        end
        def edit
          @user=current_user
        end
        # styles: { medium: "1100x1100>", thumb: "1100x1100>" },  :style
        has_attached_file :avatar, default_url: "/images/thumb/missing.png"
         validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
