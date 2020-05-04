module Support
  module Auth
    def sign_in_as_admin(admin)
      post session_path, params: { admin: { email: admin.email, password: admin.password } }
    end

    def sign_in_as_client(client)
      post client_session_path, params: { client: { email: client.email, password: client.password } }
    end

    def sign_out_as_client
      delete client_session_path
    end
  end
end
