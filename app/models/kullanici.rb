class Kullanici < ActiveRecord::Base
  attr_accessible :ad, :adres, :email, :soyad
  validates :ad, presence:true
  validates :email, :uniqueness => true

end
