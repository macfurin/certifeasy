class CertifsController < ApplicationController

  def index
    @certifs_invalides = Certif.find(:all, :conditions => "valid_until IS NULL")
    @certifs_valides = Certif.find(:all, :conditions => "valid_until IS NOT NULL")
  end

  def show
    @certif = Certif.find(params[:id])
    respond_to do |format|
      format.json { render :json => @certif }
    end
  end

  def new
    @certif = Certif.new
  end

  def create
    @certif = Certif.new(params[:certif])
    if @certif.save
      redirect_to @certif, :notice => "Successfully created certif."
    else
      render :action => 'new'
    end
  end

  def edit
    @certif = Certif.find(params[:id])
  end

  def update
    @certif = Certif.find(params[:id])
    if @certif.update_attributes(params[:certif])
      redirect_to @certif, :notice  => "Successfully updated certif."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @certif = Certif.find(params[:id])
    @certif.destroy
    redirect_to certifs_url, :notice => "Successfully destroyed certif."
  end

  def valider
    @certif = Certif.find(params[:id])
    @certif.update_attribute :valid_until, Time.now
    redirect_to certifs_path , :notice => "Certificat valide."
  end

  def invalider
    @certif = Certif.find(params[:id])
    @certif.update_attribute :valid_until, nil
    redirect_to certifs_path , :notice => "Certificat invalide."
  end
end
