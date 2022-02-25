class AddListToMovies < ActiveRecord::Migration[6.1]
  def change
    add_reference :movies, :list, foreign_key: true
  end
end
