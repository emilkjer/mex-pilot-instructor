#begin
#CODE
#rescue
#  puts "Error #{$!}"
#  puts "#END#"
#end

class GroupRecord < ActiveRecord::Base
  attr_accessible :student_records, :group_id, :reg_date
  has_many :student_records
  has_many :students, :through => :student_records, :source => :group_student

  def self.get_group_students(group_id)
    self.where(:group_id => group_id).last.student_records
  end

  def self.get_group_student_stats(group_id)

    group = self.where(:group_id => group_id)

    #Pull out the student records for the corresponding group record
    gr = group.map{|c|c.student_records}

    #Remove empty brackets
    #Not necessary  if using group_by later on
    #gr.shift

    #Collect all arrays
    dd = []
    gr.each {|f|f.each { |d| dd<< d} }


    #Group each group records according to
    studhash = dd.group_by{|h| h.student_student_id}

    #Prepare hash-map for student stats
    studstats = {}

    #Iterate through each student and calculate the stats
    studhash.each do |student|
      #begin
      #Temporary
      preparation_array = []
      personal_attitude_array = []
      present_array = []

      #Create array of preparation
      student[1].each{|gg|  preparation_array<< gg.preparation && personal_attitude_array << gg.personalAttitude}
      student_name = {:name => Student.find(student[0]).name}

      #Calculate statistics
      preparation_avg =     {:preparation => preparation_array.sum / preparation_array.count}
      personal_attitude_avg = {:personal_attitude => personal_attitude_array.sum / personal_attitude_array.count}


      # merge hash
      hash_avg = {}
      hash_avg = hash_avg.merge(student_name)
      hash_avg = hash_avg.merge(preparation_avg)
      hash_avg = hash_avg.merge(personal_attitude_avg)

      #Store stats for current student

      studstats[student[0]] = hash_avg

    end

    #Response will look like this
    # => {1=>{:preparation=>12, :personal_attitude=>6}, 2=>{:preparation=>18, :personal_attitude=>17}}

    return studstats
  end
end
