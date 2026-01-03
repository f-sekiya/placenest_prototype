Rails.application.routes.draw do
  # Simplified design preview route: /design/:id where id is candidate1|candidate2|candidate3
  get 'design/:id', to: 'mockups#show', constraints: { id: /candidate[1-3]/ }, as: :design_candidate

  # Convenience route: /design -> candidate1
  get 'design', to: redirect('/design/candidate1')

  # Minimal root: use HomeController#index which renders mockups/show
  root to: 'mockups#show'

  # Other application routes can follow here
end

