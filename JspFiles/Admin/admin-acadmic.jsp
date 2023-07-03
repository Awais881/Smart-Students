<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Quiz</title>
    <style>
        /* Add your custom CSS styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
           
        }
        h2 {
            background-color: #00c78e;
    padding: 10px;
    color: white;
        }
        label {
            display: block;
            margin-top: 10px;
            color: #333;
            font-weight: bold;
        }
        input[type="text"], textarea, select {
            width: 90%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        textarea {
            resize: vertical;
        }
        .question {
            margin-bottom: 20px;
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        hr {
            border: none;
            border-top: 1px solid #ccc;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .submit-button {
            display: block;
            margin-top: 20px;
            padding: 10px 30px;
            font-size: 18px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.3);
            transition: background-color 0.3s ease-in-out;
        }
        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Add Quiz</h2>
    <form method="post" action="AddQuiz.jsp">
        <label for="title">Quiz Title:</label>
        <input type="text" id="title" name="title" required><br><br>
        
        <label for="description">Description:</label><br>
        <textarea id="description" name="description" rows="5" cols="30"></textarea><br><br>

        <h2>Quiz Questions</h2>
        <div id="question-container">
            <div class="question">
                <label for="question1">Question:</label>
                <input type="text" id="question1" name="question1" required><br><br>
                <label for="option1_1">Option 1:</label>
                <input type="text" id="option1_1" name="option1_1" required><br><br>
                <label for="option2_1">Option 2:</label>
                <input type="text" id="option2_1" name="option2_1" required><br><br>
                <label for="option3_1">Option 3:</label>
                <input type="text" id="option3_1" name="option3_1" required><br><br>
                <label for="option4_1">Option 4:</label>
                <input type="text" id="option4_1" name="option4_1" required><br><br>
                <label for="answer_1">Correct Answer:</label>
                <!-- <select id="answer_1" name="answer_1" required>
                    <option value="option1">Option 1</option>
                    <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option>
                    <option value="option4">Option 4</option>
                    
                </select> -->
                <input type="text" id="answer_1" name="answer_1" required>

                <hr>
            </div>
        </div>
        <button type="button" onclick="addQuestion()">Add Question</button><br><br>
        <input type="hidden" id="questionCount" name="questionCount" value="1">

        <input type="submit" value="Add Quiz" class="submit-button">
    </form>

    <script>
   var questionCount = 1;

function addQuestion() {
    questionCount++;

    var questionContainer = document.getElementById('question-container');

    var questionDiv = document.createElement('div');
    questionDiv.className = 'question';

    var questionLabel = document.createElement('label');
    questionLabel.htmlFor = 'question' + questionCount;
    questionLabel.appendChild(document.createTextNode('Question:'));
    questionDiv.appendChild(questionLabel);

    var questionInput = document.createElement('input');
    questionInput.type = 'text';
    questionInput.id = 'question' + questionCount;
    questionInput.name = 'question' + questionCount;
    questionInput.required = true;
    questionDiv.appendChild(questionInput);

    questionDiv.appendChild(document.createElement('br'));
    questionDiv.appendChild(document.createElement('br'));

    for (var i = 1; i <= 4; i++) {
        var optionLabel = document.createElement('label');
        optionLabel.htmlFor = 'option' + i + '_' + questionCount;
        optionLabel.appendChild(document.createTextNode('Option ' + i + ':'));
        questionDiv.appendChild(optionLabel);

        var optionInput = document.createElement('input');
        optionInput.type = 'text';
        optionInput.id = 'option' + i + '_' + questionCount;
        optionInput.name = 'option' + i + '_' + questionCount;
        optionInput.required = true;
        questionDiv.appendChild(optionInput);

        questionDiv.appendChild(document.createElement('br'));
        questionDiv.appendChild(document.createElement('br'));
    }

    var answerLabel = document.createElement('label');
    answerLabel.htmlFor = 'answer_' + questionCount;
    answerLabel.appendChild(document.createTextNode('Correct Answer:'));
    questionDiv.appendChild(answerLabel);

    var answerInput = document.createElement('input');
    answerInput.type = 'text';
    answerInput.id = 'answer_' + questionCount;
    answerInput.name = 'answer_' + questionCount;
    answerInput.required = true;
    questionDiv.appendChild(answerInput);

    questionDiv.appendChild(document.createElement('hr'));

    questionContainer.appendChild(questionDiv);
    
    // Hide previous question fields
    var previousQuestionDivs = document.getElementsByClassName('question');
    var previousQuestionCount = previousQuestionDivs.length - 2; // Adjusted index for 0-based count
    if (previousQuestionCount >= 0) {
        previousQuestionDivs[previousQuestionCount].style.display = 'none';
    }

    // Update the questionCount hidden input field
    document.getElementById('questionCount').value = questionCount;
}

    </script>
    
</body>
</html>
