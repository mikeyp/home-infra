Sequel.migration do
  change do
    create_table(:rescuetime_analytics) do
    Date :date
    Integer :time_spent
    Integer :number_people
    String :activity
    String :category
    Integer :productivity
    end
  end
end
