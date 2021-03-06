
class GroupsController < ApplicationController
  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groups }
    end
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.json
  def new
    @group = Group.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
    @students = Student.all()
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(params[:group])

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render json: @group, status: :created, location: @group }
      else
        format.html { render action: "new" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.json
  def update
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end


  def choose_group
    @groups = Group.all
    respond_to do |format|
      format.html
    end
  end

  def group_stats
    #StudentRecord.average(:preparation, :group => 'student_student_id')
    #StudentRecord.average(:personalAttitude, :group => 'student_student_id')
    #@students = GroupRecord.get_group_students(params[:group][:group_id])
    #@group = Group.find(params[:group][:group_id].to_i)

    @group = Group.find(params[:group][:group_id].to_i)
    @students = GroupRecord.get_group_students(params[:group][:group_id])
    @stats = GroupRecord.get_group_student_stats(params[:group][:group_id])

    respond_to do |format|
      format.html
    end
  end

  def student_notes
    StudentRecord.where(:group_id => group_id).last.student_records


    #:group_id=>@group.id, :student_id=>stud[0]
    debugger
    puts "sdf"
    return true
  end
end
