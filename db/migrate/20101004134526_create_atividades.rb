class CreateAtividades < ActiveRecord::Migration
  def self.up
    create_table :atividades do |t|
      t.string :titulo
      t.string :descricao
      t.datetime :data_inicial
      t.datetime :previsao_final
      t.string :prioridade
      t.string :tipo
      t.integer :projeto_id
      t.integer :usuario_id
    end
  end

  def self.down
    drop_table :atividades
  end
end
