class PagesController < ApplicationController

layout 'admin'
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])

  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if  @page.update_attributes(page_params)
      redirect_to(page_path(@page))
    else
      render('edit')
    end
  end


  def delete
    @page = Page.find(params[:id])

  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to(pages_path)
  end

  def new
    @page = Page.new
  end

  def create
    # Intanciate new Object


    @page = Page.new(page_params)
    
    # Save the Object
    if @page.save 
      redirect_to(pages_path)

    else
      render('new')
    end
  end
  private
    def page_params
      params.require(:page).permit(:name, :position, :visible, :permalink, :subject_id)
    end
end
