<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
            <script type="text/javascript">
            function countDown(secs, elem)
            {
                var element = document.getElementById(elem);
                element.innerHTML = "<h2>You have <b>"+secs+"</b> seconds to answer the questions</h2>";
                if(secs < 1) {
                    document.quiz.submit();
                }
                else
                {
                    secs--;
                    setTimeout('countDown('+secs+',"'+elem+'")',1500);
                }
            }

            function validate() {
                return true;
            }
            </script> 
            <div id="status"></div>
            <script type="text/javascript">countDown(5,"status");</script>
            <title>Questionnaire</title>
            <style type="text/css"> 
            span { 
                color: #FF00CC;
            }
            </style>
        </head>
        <body>
            <h1>Please complete the following Survey</h1>
            <form name="quiz" id="myquiz" onsubmit="return validate()" method="post" action="includes/process.php">
                First Name: <input type="text" name="firstname" id="fname"/>
                <p></p>
                Last Name: <input type="text" name="lastname" id="lname"/>
                <p></p>
                <input type="submit" name="submitbutton" value="Go"></input>
                <input type="reset" value="clear all"></input>
            </form>
        </body>
    </html>
