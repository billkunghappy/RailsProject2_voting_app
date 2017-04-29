# 這裡的資料是負責創造新的 View Helper ，如link_to,form_for...都是一種 View Helper，實際上是ruby程式碼，若要創造新helper在底下創造
module ApplicationHelper
	def user_gender(gender)
		if gender == 1
	      "男"
	    else
	      "女"
	    end
	 end
	 # 創造了一個view_helper 叫 user_gender
end
