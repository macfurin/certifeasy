class RolesController < ApplicationController
  #load_and_authorize_resource

  def index
    @roles = Role.all
    respond_to do |format|
      format.json { render :json => @roles }
    end
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(params[:role])
    if @role.save
      redirect_to @role, :notice => "Successfully created role."
    else
      render :action => 'new'
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    if @role.update_attributes(params[:role])
      redirect_to @role, :notice  => "Successfully updated role."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to roles_url, :notice => "Successfully destroyed role."
  end
end
