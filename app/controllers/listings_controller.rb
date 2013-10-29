class ListingsController < ApplicationController #inherits from ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(params[:listing])
    listing_key = SecureRandom.urlsafe_base64
    @listing[:listing_key] = listing_key
    redirect_to listing_path(@listing.id) if @listing.save
  end

  def show
    @listing = Listing.find(params[:id])
  end


end

