class LinksController < ApplicationController

  # def test
  #   # binding.pry
  #   params[:short_url]
  #   redirect_to 'https://paste2.org/CjGv2dDZ'
  # end


  def index
    @links = Link.all
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
  end

  def create
    @link = Link.new(link_params)
    @link.url_short = ("a".."z").to_a.insert(-1, 1, 2,3,4,5,6,7,8,9,0).sample(5).join
    @link.save
    redirect_to @link
  end

  private
    def link_params
      params.require(:link).permit(:link)
    end
end
