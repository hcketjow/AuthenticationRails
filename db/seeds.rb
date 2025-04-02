User
  .where(email: 'w.chodasiewicz@example.com')
  .first_or_create(
    password: 'password',
    password_confirmation: 'password',
    role: User.roles[:admin]
  )
