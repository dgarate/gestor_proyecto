class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  
  def new
  end

  #esto crea el projecto tomando los params 
  def create
    @project=Project.create(projects_params)
  end

  def projects_params

   {name: params[:nombre], description: params[:descripcion], 
   start_date: params[:fecha_comienzo], end_date: params[:fecha_termino],
   state: params[:estado]
  }   
  end

  def dashboard
    if params[:estado].present?
      @projects=Project.where('state = ?', params[:estado])

    else
    @projects=Project.all  # esto traera un array con todos los projectos
    end
  end
end
