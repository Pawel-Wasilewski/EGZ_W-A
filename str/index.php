<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styl.css">
    <title>Document</title>
</head>
<body>

    <header>
    <img src="gz.png"><h1 id="nwm">ZAGŁOSUJ NA ULUBIONEGO PIŁKARZA 2021/2022</h1><img src="gz.png">
        
    </header>

    <main>
    <?php
    // Połączenie z bazą danych
    $conn = new mysqli("localhost", "root", "", "pilkarze_giornika");

    if ($conn->connect_error) {
        die("Błąd połączenia z bazą danych: " . $conn->connect_error);
    }

    // Obsługa formularza
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (isset($_POST["kandydat"]) && !empty($_POST["kandydat"])) {
            $selectedCandidate = $_POST["kandydat"];

            $query = "SELECT * FROM imie_nazwisko WHERE id = ?";
            $stmt = $conn->prepare($query);
            $stmt->bind_param("i", $selectedCandidate);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows == 1) {
                $updateQuery = "UPDATE imie_nazwisko SET liczba_glosow = liczba_glosow + 1 WHERE id = ?";
                $updateStmt = $conn->prepare($updateQuery);
                $updateStmt->bind_param("i", $selectedCandidate);
                $updateStmt->execute();
                echo "Głos został oddany pomyślnie!";
            } else {
                echo "Błąd: Wybrany kandydat nie istnieje.";
            }
        } else {
            echo "Błąd: Nie wybrano kandydata.";
        }
    }

    ?>
    <h1>Wybierz kandydata:</h1>
        <form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
            <select name="kandydat">
                <?php
                $candidatesQuery = "SELECT id, Imie_nazwisko FROM imie_nazwisko";
                $candidatesResult = $conn->query($candidatesQuery);
                
                if ($candidatesResult->num_rows > 0) {
                    while ($row = $candidatesResult->fetch_assoc()) {
                        echo "<option value='" . $row["id"] . "'>" . $row["Imie_nazwisko"] . "</option>";
                    }
                }
                ?>
            </select>
            <input type="submit" value="Oddaj głos">
        </form>

        <?php
        // Pobierz głosy kandydatów z bazy danych
        $votesQuery = "SELECT Imie_nazwisko, liczba_glosow FROM imie_nazwisko";
        $votesResult = $conn->query($votesQuery);

        if ($votesResult->num_rows > 0) {
            echo "<h2>Lista Głosów:</h2>";
            echo "<table border='1'>";
            echo "<tr><th>Kandydat</th><th>Liczba Głosów</th></tr>";
            while ($row = $votesResult->fetch_assoc()) {
                $candidateName = $row["Imie_nazwisko"];
                $votesCount = $row["liczba_glosow"];
                echo "<tr><td>$candidateName</td><td>$votesCount</td></tr>";
            }
            echo "</table>";
        } else {
            echo "Brak danych do wyświetlenia.";
        }
        ?>
    </main>

    <footer>
        <p>Stronę wykonał: Paweł Wasilewski i Szymon Fuajwa</p>
    </footer>
</body>
</html>