<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #222;
            color: #ccc;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            padding: 20px 0;
            background-color: #333;
            color: white;
            margin: 0;
        }
        .container {
            width: 400px;
            margin: 30px auto;
            background-color: #333;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }
        th, td {
            padding: 10px;
        }
        label {
            display: inline-block;
            margin-right: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #555;
            border-radius: 5px;
        }
        input[type="radio"], input[type="checkbox"] {
            margin-right: 5px;
            vertical-align: middle;
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #2980b9;
        }
        input[type="reset"] {
            background-color: #555;
        }
    </style>
</head>
<body>
    <h1>회원가입</h1>
    <div class="container">
        <form name="customer" method="post" action="register_p.jsp">
            <table>
                <tr>
                    <th>아이디</th>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="pw"></td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <th>성별</th>
                    <td colspan="2">
                        <label><input type="radio" name="gender" value="M" checked>남자</label>
                        <label><input type="radio" name="gender" value="F">여자</label>
                    </td>
                </tr>
                <tr>
                    <th>취미</th>
                    <td colspan="2">
                        <label><input type="checkbox" name="hobby" value="댄스">댄스</label>
                        <label><input type="checkbox" name="hobby" value="게임">게임</label>
                        <label><input type="checkbox" name="hobby" value="노래">노래</label>
                    </td>
                </tr>
                <tr>
                    <th colspan="2">
                        <input type="submit" value="전송">
                        <input type="reset" value="취소">
                    </th>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
