class PhotosController < ApplicationController
  before_filter :require_login, :only => [:new, :create, :edit, :destroy]

  def index
    @photos = Photo.order("created_at desc").all
    expires_in 24.hours

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  def show
    @photo = Photo.find(params[:id])
    expires_in 365.days, public: true

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(params[:photo])
    @photo.user = current_user

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully uploaded.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }

      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end
end
