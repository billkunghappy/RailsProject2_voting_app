class CandidatesController < ApplicationController
	def index
		@candidates=Candidate.all
	end
	def new
		@candidate=Candidate.new
	end
	def create
		@candidate=Candidate.new(get_candidate_params)
		@candidate.save
		if @candidate.save
			redirect_to candidates_path, notice: "新增候選人成功"
		else
			render :new
		end
		
	end
	

	private
	def get_candidate_params
		params.require(:candidate).permit(:name,:age,:party,:politics)
		# .permit 是過濾器，只准許括號內的物件通過
	end
end
