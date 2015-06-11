class UsersController < ApplicationController
  before_action :set_use, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = Use.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @use = Use.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @use = Use.new(use_params)

    respond_to do |format|
      if @use.save
        format.html { redirect_to @use, notice: 'Use was successfully created.' }
        format.json { render :show, status: :created, location: @use }
      else
        format.html { render :new }
        format.json { render json: @use.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @use.update(use_params)
        format.html { redirect_to @use, notice: 'Use was successfully updated.' }
        format.json { render :show, status: :ok, location: @use }
      else
        format.html { render :edit }
        format.json { render json: @use.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @use.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Use was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use
      @use = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def use_params
      params.require(:user).permit(:username, :password)
    end
end
