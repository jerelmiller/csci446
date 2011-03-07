authorization do
  
  role :admin do
    has_permission_on :admin_admin, :to => :manage
    has_permission_on :admin_roles, :to => :manage
    has_permission_on :admin_users, :to => :update
  end
  
  role :member do
    has_permission_on :members_members, :to => :read
    has_permission_on :members_games, :to => :read
  end
  
end  

privileges do
  privilege :manage, :includes => [:new, :edit, :destroy, :read]
  privilege :read, :includes => :index
  privilege :update, :includes => :edit
end