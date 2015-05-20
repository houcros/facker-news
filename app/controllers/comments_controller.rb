class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    if not params[:submit_id] and not params[:parent_id]
      @comments = Comment.all
    else
      if params[:submit_id]
        @comments = Comment.where("submit_id = ?", params[:submit_id])
      else
        @comments = Comment.where("parent_id = ?", params[:parent_id])
      end
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new/1
  def new
    @comment = Comment.new(submit_id: params[:submit_id], parent_id: params[:parent_id])
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    if current_user
      comment_params[:user_id] = current_user.user_id
    else
      comment_params[:user_id] = 1
    end
    comment_params[:score] = 0

    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to submits_path+'/'+@comment.submit_id.to_s }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET /comments/upvote/1
  # GET /comments/upvote/1.json
  def upvote
    @comment = Comment.increment_counter(:score, params[:id])
    respond_to do |format|
      format.html {redirect_to request.referrer}
      format.json { render :show, status: :ok, location: @comment }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      @comment_params ||= params.require(:comment).permit(:content, :user_id, :submit_id, :parent_id)
    end
end
