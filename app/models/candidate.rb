class Candidate < ApplicationRecord
	validates_presence_of :name,:age,:party
	# 設定name,age,party為必填
	scope :over_age, ->(age) { where("age > #{age}") }
	# 創造新 scope ， scope 等於是控制 DB 的各種函式，直接寫在DB的話可以方便管理DB

	default_scope { order(id: :desc) }
	# default_scope 不需被引用，而直接套用在所有有關的scope上，例如以上就會使所有select資料有關的指令都加上 .order(age: :desc)，讓所有都照id從大到小排列
end
