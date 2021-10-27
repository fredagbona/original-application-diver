class CommentsController < ApplicationController
  before_action :set_annonce, only: [:create, :edit, :update]
  def create
    
    @annonce = Annonce.find(params[:annonce_id])
    @comment = @annonce.comments.build(comment_params)
    @comment.user_id = current_user.id

    
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
          format.html { redirect_to annonce_path(@annonce), notice: 'Vous ne pouvez pas faire un commentaire vide...' }
      end
    end
  end

  def edit
    @comment = @annonce.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'Modifier le commentaire'
      format.js { render :edit }
    end
  end
  def update
    @comment = @annonce.comments.find(params[:id])
      respond_to do |format|
        if @comment.update(comment_params)
          flash.now[:notice] = 'Le commentaire a été modifié'
          format.js { render :index }
        else
          flash.now[:notice] = "Le commentaire n'a pas été modifié"
          format.js { render :edit_error }
        end
      end
  end
  private
  def set_annonce
    @annonce = Annonce.find(params[:annonce_id])
  end
  def comment_params
    params.require(:comment).permit(:annonce_id, :content)
  end
  
end
