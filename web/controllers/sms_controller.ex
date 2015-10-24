defmodule Hack2015Server.SmsController do
  use Hack2015Server.Web, :controller

	def receive_sms(conn, %{"from" => from, "to" => to, "content" => content, "msg_id" => msg_id}) do
    msg = %{from: from,
            to: to,
            content: content,
            msg_id: msg_id}
    Hack2015Server.Endpoint.broadcast! "sms", "new_msg", msg
    json conn, msg
  end
end
