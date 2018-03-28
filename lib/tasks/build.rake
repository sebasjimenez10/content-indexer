namespace :check do
  desc 'Runs all commands required before starting server'
  task all: :environment do
    raise 'Specs check failed' unless system('rspec spec')
    raise 'Rubocop check failed' unless system('rubocop')
    raise 'Brakeman check failed' unless system('brakeman')
    raise 'Bundler Audit check failed' unless system('bundle audit check --update')
  end
end
