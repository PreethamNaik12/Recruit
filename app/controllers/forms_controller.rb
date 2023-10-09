class FormsController < InheritedResources::Base
<<<<<<< HEAD

  before_action :set_form, only: %i[ show edit update]

  # GET /slots or /slots.json
  def index
    @forms = Form.all
  end

  # GET /slots/1 or /slots/1.json
  def show
  end

    # GET /slots/1/edit
    def edit

    end

  # GET /slots/new
  def new
    @form = Form.new
  end


  # POST /slots or /slots.json
  def create
    @form = Form.new(form_params)
    respond_to do |format|
      if @form.save
        format.html { redirect_to forms_url(@form), notice: "Form was successfully created." }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slots/1 or /slots/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to forms_url(@form), notice: "Form was successfully updated." }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @form = Form.find(params[:id])
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: "Form was successfully destroyed." }
      format.json { head :no_content }
    end
=======
  def new
    puts "Reached the new action"
    @id_form = 1
    id = @id_form
    @form=Form.find(id)
    @questions = Question.all
    @quetion = Question.new
>>>>>>> b63d198afd1cd53145b0378f28d233b4563781bf
  end
  private

  def set_form
    @form = Form.find(params[:id])
  end

    def form_params
      params.require(:form).permit(:id,:title,:position,:salary)
    end

end

