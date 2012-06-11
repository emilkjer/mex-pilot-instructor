
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

  debugger

  @ss = params[]
  if params[:registrations]
    params[:registrations]
  end
  respond_to do |format|
    format.html { redirect_to '/start', notice: 'Group record was successfully created.' }
  end
end

end


