authorization do
  
  role :guest do
    has_permission_on :games, :to => :read
  end
  
  role :admin do
    includes :guest
    has_permission_on :admin_roles, :to => :manage
    has_permission_on :admin_users, :to => :view_edit
    has_permission_on :admin_games, :to => [:view_edit, :add]
    has_permission_on :admin_my_games, :to => :manage
  end
  
  role :member do
    includes :guest
    has_permission_on :members_games, :to => [:view_edit, :add]
    has_permission_on :members_users, :to => :view_edit
  end
  
end  

privileges do
  privilege :view_edit, :includes => [:index, :change]
  privilege :manage, :includes => [:view_edit, :add, :destroy]
  privilege :add, :includes => [:new, :create]
  privilege :read, :includes => :index
  privilege :change, :includes => [:edit, :update]
end