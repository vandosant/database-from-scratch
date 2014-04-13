Sequel.migration do
  up do
    create_table(:objects) do
      primary_key :id
      String :name, :null=>false
    end
  end

  down do
    drop_table(:objects)
  end
end