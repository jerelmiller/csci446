authorization do
  role :guest do
    has_permission_on :games, :to => :read
  end
  
  role :member do
    has_permission_on :admin_admin, :to => :read
  end
  
end

privileges do
  privilege :read, :includes => [:index, :show]
end
  