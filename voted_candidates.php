<?php
session_start(); // ✅ Start session for user tracking
include 'connection.php'; // ✅ Include database connection

// ✅ Fetch all candidates who received votes from a database VIEW
$result = $conn->query("
  SELECT * FROM voted_candidates_view 
  ORDER BY event_name, list_name, vote_count DESC
");

if (!$result) {
    die("Query failed: " . $conn->error); // ✅ Simple error handling
}

// ✅ Organize candidates by event > list
$candidates = [];
while ($row = $result->fetch_assoc()) {
    $event = $row['event_name']; // e.g. "Presidential Election"
    $list = $row['list_name'];   // e.g. "Engineering Department"
    $candidates[$event][$list][] = $row;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Voted Candidates</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ✅ Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- ✅ Custom Styling -->
    <style>
        body {
            background: #f5f8fa;
            /* light background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 30px;
        }

        .event-section {
            margin-bottom: 40px;
            /* space between events */
        }

        .list-section {
            margin-bottom: 25px;
            /* space between lists */
        }

        .candidate-list-item {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 15px;
            margin-bottom: 15px;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.05);
            display: flex;
            align-items: flex-start;
            gap: 20px;
        }

        .candidate-list-item img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 10px;
        }

        .candidate-info h5 {
            margin-bottom: 6px;
            font-weight: bold;
        }

        .candidate-info p {
            margin: 0;
            font-size: 14px;
        }

        .badge {
            font-size: 14px;
        }
    </style>
</head>

<body>
    <div class="container">

        <!-- ✅ Page Header -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="text-primary">🏆 Candidates Who Received Votes</h2>
            <a href="events_overview.php" class="btn btn-outline-primary">🔙 Back to Events</a>
        </div>

        <!-- ✅ Loop through events -->
        <?php foreach ($candidates as $event => $lists): ?>
            <div class="event-section">
                <h3 class="text-dark mb-3">🗳️ <?= htmlspecialchars($event) ?></h3>

                <!-- ✅ Loop through each list inside the event -->
                <?php foreach ($lists as $list => $members):
                    // ✅ Calculate total votes in this list
                    $listTotalVotes = array_sum(array_column($members, 'vote_count'));
                ?>
                    <div class="list-section">
                        <h5 class="text-info mb-3">
                            📋 List: <?= htmlspecialchars($list) ?>
                            <span class="badge bg-secondary">Total Votes: <?= $listTotalVotes ?></span>
                        </h5>

                        <!-- ✅ Loop through candidates inside the list -->
                        <?php foreach ($members as $row): ?>
                            <div class="candidate-list-item">
                                <!-- ✅ Candidate image -->
                                <?php if (!empty($row['image_url'])): ?>
                                    <img src="images/<?= htmlspecialchars($row['image_url']) ?>" alt="<?= htmlspecialchars($row['name']) ?>">
                                <?php endif; ?>

                                <!-- ✅ Candidate info -->
                                <div class="candidate-info">
                                    <h5><?= htmlspecialchars($row['name']) ?></h5>
                                    <p>
                                        <strong>Party:</strong> <?= htmlspecialchars($row['party']) ?> |
                                        <strong>Title:</strong> <?= htmlspecialchars($row['title']) ?>
                                    </p>
                                    <p><?= htmlspecialchars($row['description']) ?></p>
                                    <span class="badge bg-success">🗳️ Votes: <?= $row['vote_count'] ?></span>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endforeach; ?>
    </div>
</body>

</html>