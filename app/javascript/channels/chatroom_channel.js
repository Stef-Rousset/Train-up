import consumer from "./consumer";
// import { setRTLTextPlugin } from "mapbox-gl";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  const inputMessage = document.getElementById('message_content');

  if (messagesContainer) {
    const currentUserId = messagesContainer.dataset.currentUser
    const id = messagesContainer.dataset.chatroomId;
    messagesContainer.scrollTo(0,messagesContainer.scrollHeight);

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data.message);
        inputMessage.value = '';
        messagesContainer.scrollTo(0,messagesContainer.scrollHeight);
        const messages = messagesContainer.querySelectorAll('.message-container')
        const lastMessage = messages[messages.length - 1]

        if (data.author == currentUserId) {
          lastMessage.classList.add('author');
        } else {
          lastMessage.classList.remove('author');
          lastMessage.classList.add('speech-bubble-rose');
        }
      },
    });
  }

}

export { initChatroomCable };



