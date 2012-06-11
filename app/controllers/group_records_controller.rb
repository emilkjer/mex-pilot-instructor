
class GroupRecordsController < ApplicationController
  # GET /group_records
  # GET /group_records.json
  def index
    @group_records = GroupRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @group_records }
    end
  end

  # GET /group_records/1
  # GET /group_records/1.json
  def show
    @group_record = GroupRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_record }
    end
  end

  # GET /group_records/new
  # GET /group_records/new.json
  def new
    @group_record = GroupRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group_record }
    end
  end

  # GET /group_records/1/edit
  def edit
    @group_record = GroupRecord.find(params[:id])
  end

  # POST /group_records
  # POST /group_records.json
  def create
    @group_record = GroupRecord.new(params[:group_record])

    respond_to do |format|
      if @group_record.save
        format.html { redirect_to @group_record, notice: 'Group record was successfully created.' }
        format.json { render json: @group_record, status: :created, location: @group_record }
      else
        format.html { render action: "new" }
        format.json { render json: @group_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /group_records/1
  # PUT /group_records/1.json
  def update
    @group_record = GroupRecord.find(params[:id])

    respond_to do |format|
      if @group_record.update_attributes(params[:group_record])
        format.html { redirect_to @group_record, notice: 'Group record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_records/1
  # DELETE /group_records/1.json
  def destroy
    @group_record = GroupRecord.find(params[:id])
    @group_record.destroy

    respond_to do |format|
      format.html { redirect_to group_records_url }
      format.json { head :no_content }
    end
  end
end
