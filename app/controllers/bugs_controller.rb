class BugsController < ApplicationController

  def index
    if params[:commit] == "Show all"
       params[:q].each { |key, value| params[:q][key] = "" }
    end
    @search = Bug.search(params[:q])
    @bugs = @search.result.paginate(page: params[:page], :per_page => 12)

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
  end

  def edit
    @bug = Bug.find(params[:id])
    # @bug.priority = priority_to_str(@bug.priority)
  end

  def create
    #params[:bug][:priority] = priority_to_int(params[:bug][:priority])
    @bug = Bug.new(params[:bug])
    @bug.reported_by = current_user.id

    if @bug.save
      flash[:success] = "Bug reported."
      redirect_to @bug
    else
      render 'new'
    end
  end
  
  def update   
    @bug = Bug.find(params[:id])

    if @bug.update_attributes(params[:bug])
       flash[:success] = "Bug updated."
       redirect_to @bug
    else
       render 'new'
    end
  end

  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy
    flash[:success] = "Bug deleted."

    respond_to do |format|
      format.html { redirect_to bugs_url }
      format.json { head :no_content }
      format.js { redirect_to root_path }
    end
  end
end


























