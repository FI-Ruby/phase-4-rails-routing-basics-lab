class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students
    end

    def grades 
        orderedstudents = Student.order(grade: :DESC)
        render json: orderedstudents
    end

    def highest_grade 
        topstudent = Student.order(grade: :DESC).first
        render json: topstudent
    end
end
