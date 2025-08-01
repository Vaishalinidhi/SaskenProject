<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TalentBridge - Job Listings</title>
    <style>
    .chatbot-container {
        position: fixed;
        top: 0; left: 0; right: 0; bottom: 0;
        background: rgba(0, 0, 0, 0.6);
        display: flex; justify-content: center; align-items: center;
        z-index: 9999;
    }
    

    .hidden { display: none; }

    .chatbox {
    width: 400px;
    max-height: 90vh;
    overflow-y: auto;
    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
    border-radius: 20px;
    box-shadow: 0 8px 32px rgba(0,0,0,0.2);
    padding: 20px;
    font-family: 'Segoe UI';
    animation: fadeIn 0.5s ease-in-out;
    border: 1px solid rgba(255,255,255,0.2);
}
    #chat-content {
    scroll-behavior: smooth;
}
    
    
    
    .chat-msg {
        margin-bottom: 15px;
    }

    .chat-msg {
  display: flex;
  margin: 8px 0;
  max-width: 90%;
}

.chat-msg.bot {
  justify-content: flex-start;
}

.chat-msg.user {
  justify-content: flex-end;
}

.chat-msg p {
  padding: 10px 15px;
  border-radius: 15px;
  max-width: 70%;
  font-family: 'Segoe UI', sans-serif;
  font-size: 14px;
  line-height: 1.4;
  word-break: break-word;
}

.chat-msg.bot p {
  background-color: #f1f0f0;
  color: #000;
  border-top-left-radius: 0;
}

.chat-msg.user p {
  background-color: #d1e7dd;
  color: #000;
  border-top-right-radius: 0;
}
    
    

    input[type="text"], input[type="email"], input[type="file"], input[type="number"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 10px;
    }

    button.next-btn {
        background: #007bff;
        color: white;
        padding: 10px 18px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        float: right;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: scale(0.95); }
        to { opacity: 1; transform: scale(1); }
    }

    label { font-weight: bold; display: block; margin-bottom: 5px; }
    
        body {
            background-color: #eef2f3;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 40px;
        }

        .card {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            width: 600px;
            transition: 0.3s ease;
        }

        .card:hover {
            transform: scale(1.01);
        }

        .header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .header img {
            height: 50px;
            margin-right: 15px;
        }

        .company-name {
            font-size: 24px;
            font-weight: bold;
            color: #0a3d62;
        }

        .role {
            font-size: 26px;
            font-weight: bold;
            margin-top: 10px;
            color: #2c3e50;
        }

        .meta {
            font-size: 15px;
            color: #666;
            margin: 6px 0;
        }

        .tags {
            margin-top: 15px;
        }

        .tag {
            display: inline-flex;
            align-items: center;
            background-color: #d4edda;
            color: #155724;
            border-radius: 20px;
            padding: 6px 12px;
            margin-right: 10px;
            font-size: 14px;
        }

        .tag img {
            height: 14px;
            margin-right: 6px;
        }

        .apply-btn {
            margin-top: 25px;
            background: linear-gradient(to right, #007bff, #0056b3);
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .apply-btn:hover {
            background: linear-gradient(to right, #0056b3, #003f7f);
        }
    </style>
</head>
<body>

    <!-- Job Card 1 -->
    <div class="card">
        <div class="header">
            <img src="https://upload.wikimedia.org/wikipedia/en/thumb/2/28/Sasken_Logo.svg/1200px-Sasken_Logo.svg.png" alt="Sasken Logo">
            <div class="company-name">Sasken Technologies</div>
        </div>

        <div class="role">Java Developer Intern</div>
        <div class="meta">Location: Bangalore, India</div>
        <div class="meta">Posted: 2 days ago</div>
        <div class="meta">Applicants: 13</div>

        <div class="tags">
            <div class="tag">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/20px-Flat_tick_icon.svg.png">
                Full-time
            </div>
            <div class="tag">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/20px-Flat_tick_icon.svg.png">
                Offsite
            </div>
        </div>

        <button class="apply-btn" onclick="startChatbot()">Apply</button>
    </div>

    <!-- Job Card 2 -->
    <div class="card">
        <div class="header">
            <img src="https://i.pinimg.com/736x/aa/a2/45/aaa245759726ab04e968b9bff4981a52.jpg" alt="TCS Logo">
            <div class="company-name">TCS</div>
        </div>

        <div class="role">Software Tester Intern</div>
        <div class="meta">Location: Hyderabad, India</div>
        <div class="meta">Posted: 1 day ago</div>
        <div class="meta">Applicants: 24</div>

        <div class="tags">
            <div class="tag">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/20px-Flat_tick_icon.svg.png">
                Internship
            </div>
            <div class="tag">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/20px-Flat_tick_icon.svg.png">
                Onsite
            </div>
        </div>

        <button class="apply-btn" onclick="startChatbot()">Apply</button>
    </div>
    
    <!-- Chatbot Container -->
<div id="chatbot" class="chatbot-container hidden">
    <div class="chatbox">
        <div id="chat-content"></div>
    </div>
</div>

 
<script>
    const questions = [
        { msg: "Hi, thank you for showing interest. Kindly answer all the recruiter's questions to successfully apply for the job." },
        { msg: "Enter your full name:", input: "text", name: "name" },
        { msg: "Enter your email address:", input: "email", name: "email" },
        { msg: "Enter your mobile number:", input: "text", name: "phone" },
        { msg: "Upload your resume (PDF):", input: "file", name: "resume" },
        { msg: "Are you an experienced professional or a fresher?", input: "radio", name: "experience", options: ["Experienced", "Fresher"] },
        { msg: "Have you applied for a role in our company before?", input: "radio", name: "appliedBefore", options: ["Yes", "No"] },
        { msg: "Thank you! You have successfully completed all the steps.       Click 'submit' to apply your application successfully. " }
    ];

    let current = 0;
    const formData = {};

    function startChatbot() {
        document.getElementById('chatbot').classList.remove('hidden');
        current = 0;
        document.getElementById('chat-content').innerHTML = '';
        showQuestion();
    }

    function showQuestion() {
        const container = document.getElementById('chat-content');
        const q = questions[current];

        // Add chatbot message
        const msgWrapper = document.createElement('div');
msgWrapper.classList.add('chat-msg', 'bot'); // Make sure bot class is added

        if (q.msg) {
            const message = document.createElement("p");
            message.textContent = q.msg;
            msgWrapper.appendChild(message);
        }

        container.appendChild(msgWrapper);
        container.scrollTop = container.scrollHeight;

        setTimeout(() => {
            // 🔥 Clear previously added input and button
            const existingInputs = document.querySelectorAll('.chat-input');
            existingInputs.forEach(el => el.remove());

            const inputDiv = document.createElement('div');
            inputDiv.classList.add('chat-input');


            if (q.input === 'radio') {
                q.options.forEach(option => {
                    const label = document.createElement('label');
                    label.style.display = "block";
                    const radio = document.createElement("input");
                    radio.type = "radio";
                    radio.name = q.name;
                    radio.value = option;
                    radio.style.marginRight = "8px";

                    label.appendChild(radio);
                    label.append(option);

           

                    inputDiv.appendChild(label);
                    inputDiv.appendChild(document.createElement('br'));
                });
            } else if (q.input) {
                const input = document.createElement('input');
                input.type = q.input;
                input.id = `input-${q.name}`;
                input.name = q.name;
                inputDiv.appendChild(input);
            }

            const nextBtn = document.createElement('button');
            nextBtn.className = 'next-btn';

            if (current === questions.length - 1) {
            	nextBtn.innerText = 'Submit';
            	nextBtn.onclick = () => {
            	    const form = document.getElementById("applicationForm");
            	    form.querySelector('input[name="name"]').value = formData.name || '';
            	    form.querySelector('input[name="email"]').value = formData.email || '';
            	    form.querySelector('input[name="phone"]').value = formData.phone || '';
            	    form.querySelector('input[name="resume"]').value = formData.resume || '';
            	    form.querySelector('input[name="experience"]').value = formData.experience || '';
            	    form.querySelector('input[name="appliedBefore"]').value = formData.appliedBefore || '';

            	    // Submit the form to the servlet
            	    form.submit();

            	    // Optional: hide chatbot
            	    document.getElementById("chatbot").classList.add('hidden');
            	};

            }
 else {
                nextBtn.innerText = 'Next';
                nextBtn.onclick = () => handleNext(q);
            }

            inputDiv.appendChild(nextBtn);

            container.appendChild(inputDiv);
            container.scrollTop = container.scrollHeight;
        }, 300);
    }


    function handleNext(q) {
        let value = '';

        if (q.input === 'radio') {
            const radios = document.getElementsByName(q.name);
            for (let r of radios) {
                if (r.checked) value = r.value;
            }
        } else if (q.input === 'file') {
            const fileInput = document.getElementById(`input-${q.name}`);
            if (fileInput && fileInput.files.length > 0) {
                value = fileInput.files[0].name;  // or fileInput.files[0] if needed
            } else {
                alert("Please upload your resume to continue.");
                return;
            }
        } else if (q.input) {
            value = document.getElementById(`input-${q.name}`).value;
        }

        if (q.input && !value) {
            alert("Please provide input to continue.");
            return;
        }

        if (q.name) {
            formData[q.name] = value;
        }
        
        if (current > 0) {
            const container = document.getElementById('chat-content');
            const answerMsg = document.createElement('div');
            answerMsg.classList.add('chat-msg', 'user');

            const response = document.createElement('p');
            

            if (q.input === 'file') {
                response.textContent = value;
            } else {
                response.textContent = value;
            }

            answerMsg.appendChild(response);
            container.appendChild(answerMsg);
            container.scrollTop = container.scrollHeight;
        }


        current++;
        showQuestion();
    }

</script>

<form id="applicationForm" action="submitApplication" method="post" style="display:none;">
    <input type="hidden" name="name">
    <input type="hidden" name="email">
    <input type="hidden" name="phone">
    <input type="hidden" name="resume">
    <input type="hidden" name="experience">
    <input type="hidden" name="appliedBefore">
</form>

    
</body>


</html>