User.first_or_create(
  email: 'w.chodasiewicz@example.com',
  password: 'password',
  password_confirmation: 'password',
  # role: User.roles[:admin]
)
