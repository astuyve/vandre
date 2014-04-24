class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	include RoleModel
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	before_create :set_default_role
	has_and_belongs_to_many :roles
	has_many :posts
	roles_attribute :roles_mask
	roles :admin, :manager, :author

	private
	def set_default_role
		self.roles = :author
	end

end
