namespace :seed_states do
  desc 'put initial states in table'
  task create: :environment do
    states_names = %w[done pending]
    states_names.each do |name|
      state = State.create(name: name)
      state.save
    end
  end

  desc 'get states'
  task get: :environment do
    puts State.all()
  end
end
