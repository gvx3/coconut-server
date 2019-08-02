class Benefit < ApplicationRecord
  belongs_to :aromatic

  def as_json(options={})
    super().merge({
        aromatic_name: self.aromatic.title
    })
  end
end
