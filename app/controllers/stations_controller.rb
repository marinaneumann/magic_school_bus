class StationsController <ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(params[:station])
    if @station.save
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(params[:station])
      redirect_to station_path
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to stations_path
  end

end
