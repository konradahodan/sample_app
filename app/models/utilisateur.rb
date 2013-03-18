# == Schema Information
#
# Table name: utilisateurs
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  prenom     :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Utilisateur < ActiveRecord::Base
  attr_accessible :email, :nom, :prenom
end
