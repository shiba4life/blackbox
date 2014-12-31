class RegistrationsController < Devise::RegistrationsController
  before_filter :redirect_to_batch, only: [:after_sign_up_path_for, :after_sign_in_path_for]
  protected

  def after_sign_up_path_for(resource)
    puts "hello"
  end

  def after_sign_in_path_for(resource)
    puts "hello"
  end

  def redirect_to_batch
    if session[:batch_id]
      batch = Batch.find(session[:batch_id])
      batch.update(user_id: current_user.id)
      redirect_to batch
    end
  end

end