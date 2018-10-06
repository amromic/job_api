
class JobsController < ApplicationController 
    before_action :set_job, only: [:show, :edit, :update, :destroy]
    
    
   def index 
      @jobs = Job.all 
   end
   
   def new 
    @job = Job.new   
   end
  
   def create 
      @job = Job.new(job_params)
      if @job.save
       flash[:success] = "Job post was successfully added"
       redirect_to job_path(@job)
      else 
       render 'new'
   end
end
   def show 
       #@job = Job.find(params[:id])
   end
   
   
   def edit 
      #@job = Job.find(params[:id]) 
   end
   
   def update
       #@job = Job.find(params[:id])
       if @job.update(job_params)
       flash[:success] = "Job post was successfully updated"
       redirect_to job_path(@job)
   else
       render 'edit'
   end
   end
   
   def destroy
       #@job = Job.find(params[:id])
       @job.destroy
       flash[:danger] = "Job post was successfully deleted"
       redirect_to jobs_path
       
   end
   
   private
    def set_job
        @job = Job.find(params[:id])
    end
   
    def job_params
      params.require(:job).permit(:title, :description)
   end
   
   end
   