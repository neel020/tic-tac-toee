<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Tic-Tac-Toe</title>
<style>
        table {
            border-collapse: collapse;
            margin: 20px auto;
        }
        td {
            width: 60px;
            height: 60px;
            text-align: center;
            font-size: 24px;
            border: 1px solid #000;
        }
</style>
<script>
        var currentPlayer = 'X';
        var board = [
            ['', '', ''],
            ['', '', ''],
            ['', '', '']
        ];
 
        function makeMove(row, col) {
            if (board[row][col] === '') {
                board[row][col] = currentPlayer;
                document.getElementById('cell-' + row + '-' + col).innerText = currentPlayer;
                if (checkWin()) {
                    alert(currentPlayer + ' wins!');
                    resetBoard();
                } else if (isBoardFull()) {
                    alert('It\'s a draw!');
                    resetBoard();
                } else {
                    currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
                }
            }
        }
 
        function checkWin() {
            for (var i = 0; i < 3; i++) {
                if (board[i][0] === currentPlayer && board[i][1] === currentPlayer && board[i][2] === currentPlayer) {
                    return true;
                }
                if (board[0][i] === currentPlayer && board[1][i] === currentPlayer && board[2][i] === currentPlayer) {
                    return true;
                }
            }
            if (board[0][0] === currentPlayer && board[1][1] === currentPlayer && board[2][2] === currentPlayer) {
                return true;
            }
            if (board[0][2] === currentPlayer && board[1][1] === currentPlayer && board[2][0] === currentPlayer) {
                return true;
            }
            return false;
        }
 
        function isBoardFull() {
            for (var i = 0; i < 3; i++) {
                for (var j = 0; j < 3; j++) {
                    if (board[i][j] === '') {
                        return false;
                    }
                }
            }
            return true;
        }
 
        function resetBoard() {
            board = [
                ['', '', ''],
                ['', '', ''],
                ['', '', '']
            ];
            currentPlayer = 'X';
            for (var i = 0; i < 3; i++) {
                for (var j = 0; j < 3; j++) {
                    document.getElementById('cell-' + i + '-' + j).innerText = '';
                }
            }
        }
</script>
</head>
<body>
<h1>Tic-Tac-Toe</h1>
<table>
<tr>
<td id="cell-0-0" onclick="makeMove(0, 0)"></td>
<td id="cell-0-1" onclick="makeMove(0, 1)"></td>
<td id="cell-0-2" onclick="makeMove(0, 2)"></td>
</tr>
<tr>
<td id="cell-1-0" onclick="makeMove(1, 0)"></td>
<td id="cell-1-1" onclick="makeMove(1, 1)"></td>
<td id="cell-1-2" onclick="makeMove(1, 2)"></td>
</tr>
<tr>
<td id="cell-2-0" onclick="makeMove(2, 0)"></td>
<td id="cell-2-1" onclick="makeMove(2, 1)"></td>
<td id="cell-2-2" onclick="makeMove(2, 2)"></td>
</tr>
</table>
</body>
</html>