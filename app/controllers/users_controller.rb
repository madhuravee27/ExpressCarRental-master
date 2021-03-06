class UsersController < ApplicationController


  def indexcustomers
    @users = User.where(["role = :role", {role: 'Customer' }])
  end

  def indexadmin
    @users = User.where(["role = :role", {role: 'Admin' }])
  end

  def indexsuperadmin
    @users = User.where(["role = :role", {role: 'Super admin' }])
  end

  def show
    @user = User.find(params[:id])
  end

  def admin

  end

  def customer

  end

  def superadmin

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
      redirect_to '/login', notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      if (current_user.role == 'Customer')
      redirect_to '/customer'
      elsif (current_user.role == 'Admin' && @user.role == 'Admin')
        redirect_to '/admin'
      elsif (current_user.role == 'Super admin' && @user.role == 'Super admin')
        redirect_to '/superadmin'
      elsif (current_user.role == 'Admin' && @user.role == 'Customer')
        redirect_to '/indexcustomers'
      elsif (current_user.role == 'Super admin' && @user.role == 'Customer')
        redirect_to '/indexcustomers'
       end
    else
      render 'edit'
    end
  end

  def makeadmin
    @user = User.find(params[:id])
    @user.update_attribute(:role, 'Admin')
    redirect_to '/indexcustomers'
  end

  def makesuperadmin
    @user = User.find(params[:id])
    @user.update_attribute(:role, 'Super admin')
    redirect_to '/superadmin'
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    role = @user.role
    unless Reservation.where("(? = user_id) AND (? = current)", @user.id, true).count == 0
      redirect_to '/indexcustomers'
      flash[:notice] = "The customer has taken out a car or reserved a car"
    else
    @user.destroy
    if role == 'Customer'
    redirect_to '/indexcustomers'
    elsif role == 'Admin'
    redirect_to '/indexadmin'
    end
    end
    end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :first_name, :last_name, :age, :address, :license_number, :credit_card_number)
  end
end
