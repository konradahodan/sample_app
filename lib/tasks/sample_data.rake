require 'faker'

namespace :db do
  desc "Remplissage de la base de donnees avec des messages fictifs"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    administrateur = User.create!(:nom => "Example User",
                                  :email => "example@railstutorial.org",
                                  :password => "foobar",
                                  :password_confirmation => "foobar")
    administrateur.toggle!(:admin)
    99.times do |n|
      nom  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "motdepasse"
      User.create!(:nom => nom,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end

    User.all(:limit => 6).each do |user|
      50.times do
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
  end
end