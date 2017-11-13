class FeedbackCommentsController < ApplicationController
  before_action :set_feedback_comment, only: [:show, :edit, :update, :destroy]

  # GET /feedback_comments
  # GET /feedback_comments.json
  def index
    @feedback_comments = FeedbackComment.all
  end

  # GET /feedback_comments/1
  # GET /feedback_comments/1.json
  def show
  end

  # GET /feedback_comments/new
  def new
    @feedback_comment = FeedbackComment.new
  end

  # GET /feedback_comments/1/edit
  def edit
  end

  # POST /feedback_comments
  # POST /feedback_comments.json
  def create
    @feedback_comment = FeedbackComment.new(feedback_comment_params)

    respond_to do |format|
      if @feedback_comment.save
        format.html { redirect_to @feedback_comment, notice: 'Feedback comment was successfully created.' }
        format.json { render :show, status: :created, location: @feedback_comment }
      else
        format.html { render :new }
        format.json { render json: @feedback_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedback_comments/1
  # PATCH/PUT /feedback_comments/1.json
  def update
    respond_to do |format|
      if @feedback_comment.update(feedback_comment_params)
        format.html { redirect_to @feedback_comment, notice: 'Feedback comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @feedback_comment }
      else
        format.html { render :edit }
        format.json { render json: @feedback_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedback_comments/1
  # DELETE /feedback_comments/1.json
  def destroy
    @feedback_comment.destroy
    respond_to do |format|
      format.html { redirect_to feedback_comments_url, notice: 'Feedback comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback_comment
      @feedback_comment = FeedbackComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_comment_params
      params.require(:feedback_comment).permit(:feedback_type, :feedback_description, :regarding_field, :employee_id)
    end
end
