class AnnoncesController < ApplicationController
  before_action :set_annonce, only: %i[ show edit update destroy ]
  before_action :doctor_required, only: [:new, :create, :edit]
  before_action :authenticate_user!
  
  # GET /annonces or /annonces.json
  def index
    @annonces = Annonce.all.order(created_at: :desc)
  end

  # GET /annonces/1 or /annonces/1.json
  def show
    @comments = @annonce.comments
    @comment = @annonce.comments.build
  end

  # GET /annonces/new
  def new
    @annonce = Annonce.new
  end

  # GET /annonces/1/edit
  def edit
  end

  # POST /annonces or /annonces.json
  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user_id = current_user.id

    respond_to do |format|
      if @annonce.save
        format.html { redirect_to @annonce, notice: "Annonce was successfully created." }
        format.js { render :index }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.js { render :index }
      end
    end
  end

  # PATCH/PUT /annonces/1 or /annonces/1.json
  def update
    respond_to do |format|
      if @annonce.update(annonce_params)
        format.html { redirect_to @annonce, notice: "Annonce was successfully updated." }
        
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annonces/1 or /annonces/1.json
  def destroy
    @annonce.destroy
    respond_to do |format|
      format.html { redirect_to annonces_url, notice: "Annonce was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annonce
      @annonce = Annonce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def annonce_params
      params.require(:annonce).permit(:title, :content, :image, :image_cache)
    end
end
