class BugsController < ApplicationController

  def index
    @bugs = Bug.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bugs }
    end
  end

  def show
    @bug = Bug.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bug }
    end
  end

  def new
    @bug = Bug.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bug }
    end
  end

  def edit
    @bug = Bug.find(params[:id])
  end

  def create
    @bug = Bug.new(params[:bug])
    @bug.reported_by = current_user.id

    if @bug.save
      flash[:success] = "Bug reported."
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def update
    @bug = Bug.find(params[:id])
   flash[:success] = "Bug updated."
   
    respond_to do |format|
      if @bug.update_attributes(params[:bug])
        format.html { redirect_to @bug, notice: 'Bug was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bug.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy
    flash[:success] = "Bug deleted."

    respond_to do |format|
      format.html { redirect_to bugs_url }
      format.json { head :no_content }
    end
  end
end
