class SessionsController < Devise::SessionsController
  def create
    super
    current_user.create_activity :create,
      owner: current_user if current_user.admin?
  end

  def destroy
    if current_user.admin?
      current_user.update_attribute :signed_out_at, Time.now.utc
      current_user.create_activity :destroy,
        owner: current_user
    end
    super
  end
end
