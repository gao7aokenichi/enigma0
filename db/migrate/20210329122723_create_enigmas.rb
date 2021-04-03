class CreateEnigmas < ActiveRecord::Migration[6.0]
  def change
    create_table :enigmas do |t|
      t.string :name # 作成するカラムとその型を、changeというメソッドの中で指定
      t.string :text
      t.text :image
      t.timestamps
    end
  end
end
