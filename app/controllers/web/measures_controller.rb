class Web::MeasuresController < Web::ApplicationController
  def new
    @type = ::Web::CallMeasurerEditType.new
  end

  def create
    @type = ::Web::CallMeasurerEditType.new params[:call_measurer]
    if @type.save
      flash_success
      redirect_to root_path
    else
      flash_error
      render :new
    end
  end
end
