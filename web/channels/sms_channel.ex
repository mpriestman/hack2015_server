defmodule Hack2015Server.SmsChannel do
	use Phoenix.Channel

  def join("sms", _message, socket) do
    {:ok, socket}
  end

end
