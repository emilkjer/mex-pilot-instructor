
class StudentRecordsController < ApplicationController
  # GET /student_records
  # GET /student_records.json
  def index
    @student_records = StudentRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_records }
    end
  end

  # GET /student_records/1
  # GET /student_records/1.json
  def show
    @student_record = StudentRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_record }
    end
  end

  # GET /student_records/new
  # GET /student_records/new.json
  def new
    @student_record = StudentRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_record }
    end
  end

  # GET /student_records/1/edit
  def edit
    @student_record = StudentRecord.find(params[:id])
  end

  # POST /student_records
  # POST /student_records.json
  def create
    @student_record = StudentRecord.new(params[:student_record])

    respond_to do |format|
      if @student_record.save
        format.html { redirect_to @student_record, notice: 'Student record was successfully created.' }
        format.json { render json: @student_record, status: :created, location: @student_record }
      else
        format.html { render action: "new" }
        format.json { render json: @student_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_records/1
  # PUT /student_records/1.json
  def update
    @student_record = StudentRecord.find(params[:id])

    respond_to do |format|
      if @student_record.update_attributes(params[:student_record])
        format.html { redirect_to @student_record, notice: 'Student record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_records/1
  # DELETE /student_records/1.json
  def destroy
    @student_record = StudentRecord.find(params[:id])
    @student_record.destroy

    respond_to do |format|
      format.html { redirect_to student_records_url }
      format.json { head :no_content }
    end
  end
end
