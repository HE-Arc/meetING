class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :check]
  before_action :authenticate_user!, only: [:new]
  # GET /posts
  # GET /posts.json

  def index
    if user_signed_in?
      @posts = Post.where("gender = ?", current_user.gender)
    else
      @posts = Post.all
    end
  end

  def admin
    @posts = Post.where("users_id =?", current_user.id)
  end

  def search
      if user_signed_in?
      @posts = Post.where("title ilike :kw and gender = :pp", :kw=>"%#{search_params[:title]}%", :pp => current_user.gender)
    else
      @posts = Post.where("title ilike :kw ", :kw=>"%#{search_params[:title]}%")
    end
  end

  def confirm
    respond_to do |format|
      format.html {redirect_to posts_confirm_path, notice: 'Try and show stuff', data: post}
    end
  end

  def check
    respond_to do |format|
      if user_signed_in?
        if @post.name == current_user.name && @post.firstname == current_user.firstname
          # Send mail.
          format.html { redirect_to posts_path, notice: 'C\'est bien toi!!!' }
        else
          format.html { redirect_to posts_path, notice: 'C\'est pas toi...' }
        end
      else
        format.html { redirect_to posts_path, notice: 'pas connecter : ouvrir une popup pour la saisie du nom...' }
      end
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new({:users_id => current_user.id, :date => DateTime.now, :title => post_params[:title], :description => post_params[:description], :name => post_params[:name], :firstname => post_params[:firstname], :gender => post_params[:gender]})
    if post_params[:image].blank?
      @post.image = File.open("public/" + post_params[:gender] + ".jpg")
    else
      @post.image = post_params[:image]
    end
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path, notice: 'Post was successfully created.' }
        format.json { render :index, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update({:title => post_params[:title], :description => post_params[:description], :name => post_params[:name], :firstname => post_params[:firstname], :gender => post_params[:gender]})
        if !post_params[:image].blank?
          @post.update({:image => post_params[:image]})
        end
        format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }
        format.json { render :index, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params[:post]
    end

    def search_params
      params[:q]
    end
end
