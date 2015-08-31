class YearRoundReadersController < ApplicationController
  def new
    @year_round_readers = YearRoundReader.new
  end

  def create
    @year_round_readers = YearRoundReader.new(year_round_reader_params)
    @year_round_readers.user_id = current_user
    @year_round_readers.partner_id = current_user.partner_id
    @year_round_readers.save
    redirect_to partner_path(current_user.partner_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def year_round_reader_params
      params.require(:year_round_reader).permit(:hours_read, :books_read, :hours_read_to, :books_loaned)
    end
end
