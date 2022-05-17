sudo -i
yum install vim httpd -y
touch /var/www/html/index.html
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servidor 2</title>

    <style>
        *{
            margin: 0;
            padding: 0;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            background-color: aliceblue;
        }
        .encabezado{
            display: flex;
            flex-direction: row;
            width: 80%;
            margin: auto;
            justify-content: space-around;
            margin-top: 5%;
            margin-bottom: 5%;
            animation-name: aparecer;
            animation-duration: 1s;
        }
        .encabezado h1 {
            font-size: 6vh;
            font-weight: 400;
            background-color: rgb(38, 148, 175);
            text-align: center;
            color: white;
            filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
            padding: 10px;
            width: 500px;
            border-radius: 10px;
            animation-duration: 3s;
            animation-iteration-count: infinite;
            animation-name: color;
        }

        @keyframes color {
            5%{
                background-color: rgb(2, 54, 133);
            }

            20%{
                background-color: rgb(40, 83, 148);
            }

            80%{
                background-color: rgb(38, 148, 175);
            }
        }

        @keyframes aparecer{
            from{
                opacity: 0;
            }

            to{
                opacity: 1;
            }
        }

        .imagen img{
            width: 200px;
            height: 200px;
        }

        .Integrantes{
            display: flex;
            flex-direction: row;
            width: 90%;
            margin: auto;
            justify-content: space-around;
            animation-name: aparecer;
            animation-duration: 3s;
        }

        .Integrantes div {
            border: 0.3px solid gray;
            width: 200px;
            filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
            border-radius: 10px;
            text-align: center;
        }

        h3{
            font-weight: 400;
            padding: 5px;
        }

        .Integrantes img {
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
    </style>

</head>
<body>
    <div class="encabezado">
        <div>
            <h1>Servidor 2 <br>Cristiano Ronaldo</h1>
        </div>
        <div class="imagen">
            <img src="https://c.tenor.com/TMAcSxENMPcAAAAd/broob-broseidon.gif">
        </div>
    </div>
    <div class="Integrantes">
        <div>
            <img src="https://media-exp1.licdn.com/dms/image/C4E03AQE49sAp5lhggw/profile-displayphoto-shrink_200_200/0/1646103942237?e=1658361600&v=beta&t=zHD57gqO9czAyxdBAtZ9jAYCkYGjNFcrqJSsiomrIpY">
            <h3>Juan Pablo Mora</h3>
        </div>
        <div>
            <img src="https://media-exp1.licdn.com/dms/image/C4E03AQE49sAp5lhggw/profile-displayphoto-shrink_200_200/0/1646103942237?e=1658361600&v=beta&t=zHD57gqO9czAyxdBAtZ9jAYCkYGjNFcrqJSsiomrIpY">
            <h3>Juan Pablo Mora</h3>
        </div>
        <div>
            <img src="https://media-exp1.licdn.com/dms/image/C4E03AQE49sAp5lhggw/profile-displayphoto-shrink_200_200/0/1646103942237?e=1658361600&v=beta&t=zHD57gqO9czAyxdBAtZ9jAYCkYGjNFcrqJSsiomrIpY">
            <h3>Juan Pablo Mora</h3>
        </div>
        <div>
            <img src="https://media-exp1.licdn.com/dms/image/C4E03AQE49sAp5lhggw/profile-displayphoto-shrink_200_200/0/1646103942237?e=1658361600&v=beta&t=zHD57gqO9czAyxdBAtZ9jAYCkYGjNFcrqJSsiomrIpY">
            <h3>Juan Pablo Mora</h3>
        </div>
    </div>
    
</body>
</html>" >> /var/www/html/index.html
service httpd restart
