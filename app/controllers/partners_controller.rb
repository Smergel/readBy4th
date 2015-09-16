class PartnersController < ApplicationController
  before_action :set_partner, only: [:show, :edit, :update, :destroy]

  # GET /partners
  # GET /partners.json
  def index
    @partners = Partner.all
    @user = current_user
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

    #Chart 2, Pie Chart for Asthma
    data_table2 = GoogleVisualr::DataTable.new
    data_table2.new_column('string', 'Partner' )
    data_table2.new_column('number', 'Absences')
    data_table2.add_rows([
        ['Absences', 150],
        ['Asthma Related Absences', 35]
    ])
    option = { title: 'Percent of Asthma Related Absences' }
    @chart2 = GoogleVisualr::Interactive::PieChart.new(data_table2, option)

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
end
