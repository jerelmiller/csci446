authorization do
  
  role :guest do
    has_permision_on :games, :to => :read
  end
  
  role :admin do
    has_permission_on :admin_admin, :to => :manage
    has_permission_on :admin_roles, :to => :manage
    has_permission_on :admin_users, :to => :manage
    has_permission_on :admin_games, :to => :manage
  end
  
  role :member do
    has_permission_on :members_games, :to => :manage
  end
  
end  

privileges do
  privilege :manage, :includes => [:new, :edit, :destroy, :read, :index, :update, :create]
  privilege :read, :includes => :index
  privilege :update, :includes => [:edit, :create]
end