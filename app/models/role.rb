class Role < ActiveRecord::Base
  has_and_belongs_to_many :users

  def name_humanize
    "#{name.humanize}"
  end
end