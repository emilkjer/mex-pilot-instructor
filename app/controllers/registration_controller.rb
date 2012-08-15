
class RegistrationController < ApplicationController
def start
  @groups = Group.all

  respond_to do |format|
    format.html # index.html.erb

  end
end

def registration

  if params[:group]
    @group = Group.find(params[:group][:group_id])
  end
  @group_record = GroupRecord.new
  @date_now = Time.now.in_time_zone('Copenhagen').to_date
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
      note = params[:note][prep[0]]
      pr = prep[1]

      students << StudentRecord.create(
          :student_student_id => student.id,
          :preparation =>pr,
          :personalAttitude => pa,
          :note => note
      )
    end
  end



  @group_record = GroupRecord.new({
                                      :group_id => params[:group_record][:group],
                                      :student_records => students,
                                      :reg_date => Time.now.in_time_zone('Copenhagen').to_date
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


