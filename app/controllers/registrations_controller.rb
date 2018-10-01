class RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(resource)
    if resource.rank == 'Tutor'
      new_charge_path(resource.id)
    else
      new_student_path(resource.id)
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :rank, :age)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :age)
  end

end
