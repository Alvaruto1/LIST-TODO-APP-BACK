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
    states = State.all
    states.each do |state|
      puts state.name
    end
  end

  desc 'set state items'
  task set_state_items: :environment do
    items = Item.all
    items.each do |item|
      puts item['state']
      if item['state'] == nil
        item['state'] = State.find_by(name: 'pending')
        item.save
      end
    end
  end
end
