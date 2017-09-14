class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize, only: [:index, :show]
  # GET /subjects
  # GET /subjects.json
  def index

    # @tt = ['slot 1', 'slot 2', 'slot 3'];
    # ttc = [:slot1 => 'val 1 for slot 1', :slot2 => 'val 2 for slot 2', :slot3 => 'val 3 for slot 3' ];

    @subjects = Subject.all
    data = {};

    # data = '';

    @subjects.each_with_index  do |p, k|
      data[k] = p.title
      # data += p.title + "<br>"
    end

    render plain: data
    # render :text => "OK"

    # render inline: "<% @subjects.each do |p| %><p><%= p.title %><p><% end %>"
    # render html:  data.html_safe #{}"<strong>Not Found #{data}</strong>".html_safe
    # render json: @subjects
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
  end

  # GET /subjects/new
  def new

    @usr = User.find( session[:user_id] )

    if @usr.role == '2'
      @subject = Subject.new
    else
      redirect_to subjects_url, notice: 'Only tutor can create subjects'
    end
    
  end

  # GET /subjects/1/edit
  def edit
  end



  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(subject_params)

    @subject.userid = session[:user_id]

    respond_to do |format|
      if @subject.save
        format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
        format.json { render :show, status: :created, location: @subject }
      else
        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:userid, :title, :author, :language, :comments)
    end
end
