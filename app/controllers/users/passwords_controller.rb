class Users::PasswordsController < Devise::PasswordsController
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)

    #  常に同じメッセージを表示
    flash[:notice] = "パスワード再設定のメールを送信しました"

    redirect_to new_session_path(resource_name)
  end
end