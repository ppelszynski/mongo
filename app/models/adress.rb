class Adress
  include Mongoid::Document
  field :city, type: String
  field :street, type: String

  belongs_to :user
end
