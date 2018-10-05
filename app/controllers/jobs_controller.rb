
class JobsController < ApplicationController 
   
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
   
      
   private 
    def job_params
      params.require(:job).permit(:title, :description)
   end
   
   end
   