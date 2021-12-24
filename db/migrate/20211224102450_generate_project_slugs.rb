class GenerateProjectSlugs < ActiveRecord::Migration[6.1]
  def change
    Project.find_each(&:save)
  end
end
