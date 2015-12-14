class PartnersController < ApplicationController
  before_action :set_partner, only: [:show, :edit, :update, :destroy]

  # GET /partners
  # GET /partners.json
  def index
    # @partner = Partner.where(partner_params)
    @partners = Partner.all
    @user = current_user
    @photo = Photo.new
    # @photos = Photo.where(partner_id: @partner.id)
  end

  def parents
    @partners = Partner.all
  end
  def edit_media 
    @story = Story.new
  end
  def story
    @story = Story.new(story_params)
    if @story.save
      redirect_to '/'
    else 
      render :new
    end
  end
  def create_event
    @event = Event.new(event_params)
    @event.partner_id = current_user.partner_id
    if @event.save 
      redirect_to partner_path(current_user.partner_id)
    else
      render :new
    end
  end

  def books_read 
    @partners = Partner.all
  end

  def community_leaders
    @partners = Partner.all
  end

  def absences
    @partners = Partner.all
    @user = current_user

    @absences = AttendanceMatter.all
    
    # Chart 1, Bar Chart for Absences
    @data_var = []
    @absences.each do |x|
      if (@data_var != []) && (@data_var.any? { |y| y[0] == (Partner.find(x.partner_id).name) }) 
        @data_var.each do |z|
          if z[0] == (Partner.find(x.partner_id).name)
            z[1] = z[1] + x.absences.to_i
            z[2] = z[1] / (Participant.where(student: true, partner_id: x.partner_id).length)
          end
        end
      else
        @data_var << [Partner.find(x.partner_id).name, x.absences, (x.absences / (Participant.where(student: true, partner_id: x.partner_id)).length)]
      end
    end

    data_table = GoogleVisualr::DataTable.new
    data_table.new_column('string', 'Partner' )
    data_table.new_column('number', 'Absences')
    data_table.new_column('number', 'Absences Per Student')
    data_table.add_rows(
        @data_var
    )
    option = { title: 'Total Absences vs. Absences Per Student' }
    @chart = GoogleVisualr::Interactive::BarChart.new(data_table, option)

    #Chart 2 Data Generation
    @overall_absences = ['Total Absences', 1]
    @absences.each do |x|
      @overall_absences[1] = @overall_absences[1] + x.absences.to_i
    end
    @asthma_percentage = ['Asthma Related Absences', 1]
    @absences.each do |y|
      @asthma_percentage[1] = @asthma_percentage[1] + (y.asthma == true ? y.absences.to_i : 0)
    end
    #Chart 2, Pie Chart for Asthma
    data_table2 = GoogleVisualr::DataTable.new
    data_table2.new_column('string', 'Partner' )
    data_table2.new_column('number', 'Absences')
    data_table2.add_rows([
      @overall_absences,
      @asthma_percentage
    ])
    option = { title: 'Percent of Asthma Related Absences' }
    @chart2 = GoogleVisualr::Interactive::PieChart.new(data_table2, option)

    #Chart 3 Data Generation
    @overall_absences2 = ['Total Absences', 1]
    @absences.each do |x|
      @overall_absences2[1] = @overall_absences2[1] + x.absences.to_i
    end
    @top_20 = ['Top 20% Of Students By Absences', 1]
    @bad_students = []
    @absences.each do |y|
      @bad_students << y.absences.to_i
      @twenty = @bad_students.length * 0.2
    end
    @bad_students.sort.reverse.first(@twenty).each do |z|
      @top_20[1] = @top_20[1] + z
    end
    #Chart 3, Pie Chart for Top 20%
    data_table3 = GoogleVisualr::DataTable.new
    data_table3.new_column('string', 'Partner' )
    data_table3.new_column('number', 'Absences')
    data_table3.add_rows([
      @overall_absences2,
      @top_20
    ])
    option = { title: '20% Of Students Generate X% Of Total Absences' }
    @chart3 = GoogleVisualr::Interactive::PieChart.new(data_table3, option)

  end
  def articles
    @article=Article.new(article_params)
    if @article.save
      redirect_to "/"
    else 
      render :new
    end
  end
  def article_form
    @partner = 1
    @article = Article.new
  end

  def documents
    @doc=Document.new(document_params)
    @doc.partner_id=current_user.partner_id
    if @doc.save
      redirect_to :back
    else
      render :new
    end
  end

  def photos
    @photo=Photo.new(photo_params)
    @photo.partner_id=current_user.partner_id
    if @photo.save
      redirect_to :back
    else
      render :new
    end
  end



  # GET /partners/1
  # GET /partners/1.json
  def show
    @user = current_user
    @family_engagement = FamilyEngagement.new
    @year_round_readers = YearRoundReader.new
    @attendance_matter = AttendanceMatter.new

    @all_attendance = AttendanceMatter.where(partner_id: @partner.id)
    @all_year_round_reader = YearRoundReader.where(partner_id: @partner.id)

    @students = Participant.where(student: true, partner_id: @partner.id)
    @participants = Participant.all

    @photo= Photo.new
    @photos=Photo.where(params[:id])

    @event = Event.last(3)
  end

  # GET /partners/new
  def new
    @partner = Partner.new
  end

  # GET /partners/1/edit
  def edit
  end

  # POST /partners
  # POST /partners.json
  def create
    @partner = Partner.new(partner_params)

    respond_to do |format|
      if @partner.save
        format.html { redirect_to '/users/sign_up', notice: 'Partner was successfully created.' }
        format.json { render :show, status: :created, location: @partner }
      else
        format.html { render :new }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partners/1
  # PATCH/PUT /partners/1.json
  def update
    respond_to do |format|
      if @partner.update(partner_params)
        format.html { redirect_to @partner, notice: 'Partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner }
      else
        format.html { render :edit }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partners/1
  # DELETE /partners/1.json
  def destroy
    @partner.destroy
    respond_to do |format|
      format.html { redirect_to partners_url, notice: 'Partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner
      @partner = Partner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_params
      params.require(:partner).permit(:name, :address, :zip_code, :website, :email, :program_start, :program_end, :logo, :phone)
    end
    def event_params
      params.require(:event).permit(:title, :date, :description, :partner_id)
    end
    def article_params
      params.require(:article).permit(:title, :link_to_article, :link_to_picture, :article_preview)
    end
    def photo_params
      params.require(:photo).permit(:photo)
    end
    def document_params
      params.require(:document).permit(:doc)
    end
    def story_params
      params.require(:story).permit(:picture, :title, :description, :story)
    end
end
