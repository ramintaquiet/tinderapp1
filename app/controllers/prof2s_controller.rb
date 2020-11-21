class Prof2sController < ApplicationController
  before_action :set_prof2, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index] 
  #before_action :job_owner, only: [:edit, :update, :destroy]
  # GET /prof2s
  # GET /prof2s.json
  def index
    @prof2s = Prof2.all
  end

  # GET /prof2s/1
  # GET /prof2s/1.json
  def show
  end

  # GET /prof2s/new
  def new
    @prof2 = Prof2.new
  end

  # GET /prof2s/1/edit
  def edit
  end

  # POST /prof2s
  # POST /prof2s.json
  def create
    @prof2 = Prof2.new(prof2_params)
    @prof2.user = current_user
    respond_to do |format|
      if @prof2.save
        format.html { redirect_to @prof2, notice: 'Prof2 was successfully created.' }
        format.json { render :show, status: :created, location: @prof2 }
      else
        format.html { render :new }
        format.json { render json: @prof2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prof2s/1
  # PATCH/PUT /prof2s/1.json
  def update
    respond_to do |format|
      if @prof2.update(prof2_params)
        format.html { redirect_to @prof2, notice: 'Prof2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @prof2 }
      else
        format.html { render :edit }
        format.json { render json: @prof2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prof2s/1
  # DELETE /prof2s/1.json
  def destroy
    @prof2.destroy
    respond_to do |format|
      format.html { redirect_to prof2s_url, notice: 'Prof2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prof2
      @prof2 = Prof2.find(params[:id])
    end

  

    # Only allow a list of trusted parameters through.
    def prof2_params
      params.require(:prof2).permit(:name, :atype)
    end
end
