class EntriesController < ApplicationController
  def index
    @entries = Entry.order("id DESC").page(params[:page])
  end

  def create
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save
        format.html { redirect_to entries_path, flash: { notice: 'Entry was successfully created.' } }
        format.json { render action: 'show', status: :created, location: @entry }
      else
        format.html { render entries_path, flash: { alert: 'Entry creation failed.' } }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private
  def entry_params
    params.require(:entry).permit(:comment)
  end
end
