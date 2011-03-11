# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
                  
user_attributes = [ { :firstname => 'Jack',
                      :lastname => 'Admin',
                      :username => 'administrator',
                      :password => 'password',
                      :password_confirmation => 'password',
                      :role => Role.new(:name => 'Admin'),
                      :email => 'jackadmin@gamez.com'
                    },
                    { :firstname => 'Diane',
                      :lastname => 'Member',
                      :username => 'member',
                      :password => 'password',
                      :password_confirmation => 'password',
                      :role => Role.new(:name => 'Member'),
                      :email => 'dianemember@gamez.com'
                    }
                  ]

user_attributes.each do |user|
  User.create!(user)
end
