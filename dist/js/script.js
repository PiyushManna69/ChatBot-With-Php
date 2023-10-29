function scrollToBottom() {
    const chatBox = document.getElementById("chat-box");
    chatBox.scrollTop = chatBox.scrollHeight;
}

function sendUserMessage() {
    const message = $("#message").val().trim();
    if (message === "") {
        return;
    }
    const userMessageHtml =
        '<div class="d-flex flex-row p-3 justify-content-end message"><div class="bg-white mr-2 p-3"><span class="text-muted">' +
        message +
        '</span></div><img src="https://img.icons8.com/color/48/000000/circled-user-male-skin-type-7.png" width="30" height="30"></div>';
    $("#chat-box").append(userMessageHtml);
    $("#message").val("");
    scrollToBottom();
    const typingIndicator = '<div class="d-flex flex-row p-3 justify-content-start typing"><img src="https://img.icons8.com/color/48/000000/circled-user-female-skin-type-7.png" width="30" height="30"><div class="chat ml-2 p-3">Typing</div>';
    $("#chat-box").append(typingIndicator);
    scrollToBottom();
    $.ajax({
        type: "POST",
        url: "process_message.php",
        data: {
            message: message
        },
        success: function(response) {
            $(".typing").remove();

            const botMessageHtml =
                '<div class="d-flex flex-row p-3 justify-content-start reply"><img src="https://img.icons8.com/color/48/000000/circled-user-female-skin-type-7.png" width="30" height="30"><div class="chat ml-2 p-3">' + response + '</div>';

            $("#chat-box").append(botMessageHtml);
            scrollToBottom();
        },
        error: function() {
            $(".typing").remove();
            const errorMessage = '<div class="d-flex flex-row p-3 justify-content-start reply">Bot encountered an error. Please try again.</div>';
            $("#chat-box").append(errorMessage);
            scrollToBottom();
        }
    });
}


function checkEnter(event) {
    if (event.keyCode === 13 && !event.shiftKey) {
        event.preventDefault();
        sendUserMessage();
    }
}