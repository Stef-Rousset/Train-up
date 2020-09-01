import consumer from "./consumer";
import { setRTLTextPlugin } from "mapbox-gl";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  const inputMessage = document.getElementById('message_content');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        inputMessage.value = '';
        messagesContainer.scrollTo(0,messagesContainer.scrollHeight);
        // console.log(data); // called when data is broadcast in the cable
        // messagesContainer.scrollTo(0,500);
        // messagesContainer.scrollIntoView({block: "end"});
        // inputMessage.innerHTML = 'Message';
        // window.scrollTo(0,document.body.scrollHeight);
      },
    });
  }

}

export { initChatroomCable };



