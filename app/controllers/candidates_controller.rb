class CandidatesController < ApplicationController
	before_action :find_candidate_byid, :only=>[:edit,:update,:destroy,:vote]
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

	def edit
	# before_action
	end
	def update
	# before_action
		if @candidate.update(get_candidate_params)
			redirect_to candidates_path, :notice =>"編輯候選人成功"
		else
			render :edit
		end
	end

	def destroy
	# before_action
		@candidate.delete if @candidate
		redirect_to candidates_path, :notice =>"刪除候選人成功"
	end

	def vote
	# before_action
		@candidate.increment(:votes)
		# @candidate.votes+=1
		@candidate.save
		redirect_to candidates_path, notice: "完成投票!"
	end

	

	private
	def get_candidate_params
		params.require(:candidate).permit(:name,:age,:party,:politics)
		# .permit 是過濾器，只准許括號內的物件通過
	end
	def find_candidate_byid
		return Candidate.find(params[:id])
	end
end
