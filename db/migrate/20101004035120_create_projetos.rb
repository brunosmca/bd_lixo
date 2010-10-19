class CreateProjetos < ActiveRecord::Migration
  def self.up
    create_table :projetos do |t|
      t.string :nome
      t.datetime :data_inicial
      t.datetime :data_final
    end
  end

  def self.down
    drop_table :projetos
  end
end
