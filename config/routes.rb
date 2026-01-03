Rails.application.routes.draw do
  # Simplified design preview route: /design/:id where id is candidate1|candidate2|candidate3
  get 'design/:id', to: 'mockups#show', constraints: { id: /candidate[1-3]/ }, as: :design_candidate

  # Set root to the design preview for quick confirmation (defaults to candidate1)
  root to: 'mockups#show', defaults: { id: 'candidate1' }

  # Other application routes can follow here
end
