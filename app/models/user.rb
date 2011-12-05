class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :firstname, :lastname, :dob, :street, :zipcode, :town, :country, :role_ids, :certifs_attributes

  validates_presence_of :firstname, :lastname, :email
  validates_uniqueness_of :email, :case_sensitive => false

  #Relation
  has_and_belongs_to_many :roles
  has_many :certifs, :dependent => :destroy
  accepts_nested_attributes_for :certifs, :allow_destroy => true

  def role?(role)
    return !!self.roles.find_by_name(role)
  end
end
