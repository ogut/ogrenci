class Kullanici < ActiveRecord::Base
  attr_accessible :ad, :adres, :email, :soyad, :telefon
  validates :ad, presence:true
  validates :soyad, presence:true
  validates :email, presence:true
end
