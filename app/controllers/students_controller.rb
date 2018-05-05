class StudentsController < ApplicationController
    def show
        @student = Student.find_by(student_id: params[:id])
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: "Your_filename",
                template: "/students/template.erb",
                layout: 'pdf.erb'
            end
        end
    end

    def index
        @students = Student.all
    end
end
