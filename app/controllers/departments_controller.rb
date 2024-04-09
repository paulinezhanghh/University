class DepartmentsController < ApplicationController
    def index
        @active_departments = Department.active.alphabetical
    end

    def show
        @department = Department.find(params[:id])
    end

    def new
        @Department = Department.create
    end

    def edit
        @department = Department.find(params[:id])
    end
end
