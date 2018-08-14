class RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(resource)
    if resource.rank == 'Tutor'
      new_tutor_path(resource.id)
    else
      new_student_path(resource.id)
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :rank)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end

end
