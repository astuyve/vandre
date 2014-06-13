class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include RoleModel
  roles_attribute :roles_mask
  roles :admin, :manager, :author
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :set_default_role
  before_destroy :remove_roles
  has_many :posts


  private
  def set_default_role
    self.roles = :author
  end

  def remove_roles
    self.roles = nil
    self.roles_mask = nil
  end

end
