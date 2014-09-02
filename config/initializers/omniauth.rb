Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, '353e8505a0264552b4ec400b042e815f', 'db2edb80cd2d4638bebdd4e697e7172d'
end