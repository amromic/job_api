
class JobsController < ApplicationController 
   
   def index 
      @jobs = Job.all 
   end
   
   def new 
    @job = Job.new   
   end
  
   def create 
      @job = Job.new(job_params)
      if @job.save
       flash[:notice] = "Job post was successfully added"
       redirect_to job_path(@job)
      else 
       render 'new'
   end
end
   def show 
       @job = Job.find(params[:id])
   end
   
   
   def edit 
      @job = Job.find(params[:id]) 
   end
   
   def update
       @job = Job.find(params[:id])
       if @job.update(job_params)
       flash[:notice] = "Job post was successfully updated"
       redirect_to job_path(@job)
   else
       render 'edit'
   end
   end
   
   private 
    def job_params
      params.require(:job).permit(:title, :description)
   end
   
   end
   