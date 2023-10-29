<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat With Piyush - A virtual assistant.</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link rel="stylesheet" href="dist/css/style.css">
</head>

<body>
    <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="card">
            <div class="d-flex flex-row justify-content-center p-3 adiv text-white">
                <span class="pb-3">Live chat</span>
            </div>
            <div class="chat-container" id="chat-box" style="overflow-y: scroll;"></div>
            <div class="form-group px-3 mt-3">
                <textarea class="form-control" id="message" placeholder="Type your message" onkeydown="checkEnter(event)"></textarea>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="dist/js/script.js"></script>
</body>

</html>