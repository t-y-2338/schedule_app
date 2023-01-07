class Schedule < ApplicationRecord
  validates :title, presence: true, length: {maximum: 30}
  validates :start, presence: true
  validates :finish, presence: true
  validates :memo, length: {maximum: 500}
  validate :start_check
  validate :finish_check

  def start_check
    errors.add(:start, "は今日より前の日付は選択できません") if start != nil && start < Date.today
  end
  
  def finish_check
    errors.add(:finish, "は開始日より後の日付を選択してください") if start != nil && finish != nil && start > finish
  end
end
