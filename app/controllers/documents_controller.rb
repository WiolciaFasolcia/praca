class DocumentsController < ApplicationController
before_action :download, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all
    
  end
  def new
    if params[:id].present?
      @document = Document.new
      @document.user_id = params[:id]
      @document.dziedzina_id = params[:id]
      set_default_data
    end
   # if params[:task_id].present?
    #  @document = Document.new
    #  @document.task_id = params[:task_id]
    #  set_default_data

    #end
    
  end

  def create

    @document = Document.new(document_params)
    @document.user_id = current_user.id
    if @document.save 
      flash[:notice] = "Dokument został dodany."
     redirect_to documents_path

    end
  end


  def show

  end
 def destroy

   # if can? :delete, :document
    @document = Document.find(params[:id])
    if @document.destroy
      flash[:notice] = "Usunięto dokument."
      redirect_to root_path
      else
      flash[:error] = "Nie można usunąć."
      redirect_to documents_path
    end
  #end
 # def destroy
  #  if can? :delete, :documents
   #   @document = Document.find(params[:id])
     # if @document.destroy && !@document.task_id.blank?  
     #   flash[:notice] = "Dokument został usunięty."
      #  redirect_to  task_path(Task.find(@document.task_id).project_id, @document.task_id)
      #else
      #  redirect_to tasks_path(Project.find(@document.project_id), :documents => 1)
     # end
   # else
   #   flash[:error] = "Nie można usunąć."
    #  redirect_to projects_path
    #end

  end

  def download
    @document= Document.find(params[:id])
  #  send_file @document.url.path
  end

  protected

    def document_params
      params.require(:document).permit(:url,:date,:name, :user_id)
      #, :task_id, :project_id )
    end

    def set_default_data
      @document.date = Time.now
    end

end
