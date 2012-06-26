
class RegistrationController < ApplicationController
def start
  @groups = Group.all

  respond_to do |format|
    format.html # index.html.erb

  end
end

def registration
  #debugger
  if params[:group]
    @group = Group.find(params[:group][:group_id])
  end
  @group_record = GroupRecord.new


  respond_to do |format|
    format.html
  end
end

def save_registration
  #TODO refactor to model
  students = []

  if params[:preparation]
    params[:preparation].each do |prep|
      student = Student.find(prep[0])
      pa = params[:personal_attitude][prep[0]]
      pr = prep[1]
      students << StudentRecord.create(
          :student_student_id => student,
          :preparation =>pr,
          :personalAttitude => pa
      )
    end
  end
  #debugger


  @group_record = GroupRecord.new({
                                      :group_id => @group,
                                      :student_records => students
                                  })



  respond_to do |format|
    if @group_record.save
      format.html { redirect_to '/start', notice: 'Group record was successfully created.' }
    else
      format.html { redirect_to '/start', notice: 'Group record was NOT created.' }
    end
  end
end

end


