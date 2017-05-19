class SubjectsController < ApplicationController

  def new
    @subject = Subject.new
  end

  def create
    # Intanciate new Object
    @subject = Subject.new(subject_params)

    # Save the Object
    if @subject.save 
      flash[:notice]= "Subject Created Successfully"
      redirect_to(subjects_path)
    else
    render('new')
    end
  end

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
  # Intanciate new Object
    @subject = Subject.find(params[:id])

    # Save the Object
    if @subject.update_attributes(subject_params)
      flash[:notice]= "Subject Updated Successfully"
      redirect_to(subject_path(@subject))
      else
    render('edit')
    end
  end  
  

  def delete
    @subject = Subject.find(params[:id])

  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice]= "#{@subject.name} Deleted Successfully"
    redirect_to(subjects_path)

  end

  private
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end
end
