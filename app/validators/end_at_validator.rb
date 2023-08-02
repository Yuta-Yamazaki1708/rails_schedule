class EndAtValidator < ActiveModel::Validator
  def validate(record)
    unless record.end_at >= record.start_at
    record.errors[:end_at] << 'は開始日以降である必要があります'
    end
  end
end