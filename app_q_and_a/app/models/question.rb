class Question < ApplicationRecord
  validates :title, presence: true # 未入力の禁止
  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 5} #文字長に関する条件
end
