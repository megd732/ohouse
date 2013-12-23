class AddUserToFavorite < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :house
    end

    create_table :user do |t|
      t.has_many :favorites
    end

    create_table :house do |t|
      t.has_many :favorites
    end
  end
end