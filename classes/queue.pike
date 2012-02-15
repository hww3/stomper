import Fins;
import Tools.Logging;

inherit StompController;

constant subscribes_to = Constants.hello_world;

void on_message(object request)
{
  Log.debug("*** Got message %s from %s with size %d.", request->headers["message-id"],   
	request->headers->destination, sizeof(request->body));
}
