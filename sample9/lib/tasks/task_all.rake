namespace :db_tasks do
  desc "Rebuild database"
  task :rebuild, [] => :environment do
    raise "Not allowed to run on production" if Rails.env.production?

    Rake::Task['task_area:task_model_001'].execute
    Rake::Task['task_area:task_model'].execute
    Rake::Task['task_area:task_model_005'].execute
    Rake::Task['task_area:task_model_004'].execute
    Rake::Task['task_area:task_model_003'].execute
    Rake::Task['task_area:task_model_002'].execute
    
    Rake::Task['task_dairy:task_model_007'].execute
    Rake::Task['task_dairy:task_model_006'].execute
    Rake::Task['task_dairy:task_model_005'].execute
    
  end
end