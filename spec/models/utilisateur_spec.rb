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

require 'spec_helper'

describe Utilisateur do
  pending "add some examples to (or delete) #{__FILE__}"
end
