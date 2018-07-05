class LinksController < ApplicationController

  def redirect
    link =  Link.find_by(url_short: params[:short_url])
    if link.nil?
      redirect_to new_link_path
    else
      redirect_to link.url_long
    end
  end


  def index
    @links = Link.all.order(created_at: :desc)
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to @link
    else
      render 'new'
    end
  end

  private
    def link_params
      params.require(:link).permit(:url_long)
    end
end
