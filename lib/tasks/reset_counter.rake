namespace :db do
  desc 'Reset Counter Cache'
  task reset_counter: :environment do
    puts 'Reset Counter'
    Candidate.all.each do |candidate|
      Candidate.reset_counters(candidate.id, :vote_logs)
    end
    puts 'Done'
  end
end
