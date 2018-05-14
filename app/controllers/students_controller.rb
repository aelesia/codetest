class StudentsController < ApplicationController
    def show
        @student = Student.find_by(student_number: params[:id])
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: @student.student_number+"_"+@student.name,
                template: "/students/show.pdf.erb",
                layout: "pdf.erb"
            end
        end
    end

    def index
        @students = Student.all
    end
end
