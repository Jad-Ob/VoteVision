<?php
session_start();
include 'connection.php';

// 🔐 Make sure user is logged in
if (!isset($_SESSION['isloggedin'])) {
    header('Location: login.php');
    exit();
}

// 👤 Fetch current user info
$email = $_SESSION['email'];
$sql = "SELECT * FROM user WHERE email = '$email'";
$user = $conn->query($sql)->fetch_assoc();
if (!$user) {
    die('❌ User not found.');
}

// 📝 Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $new_name  = trim($_POST['name']);
    $new_email = trim($_POST['email']);
    $new_pass  = trim($_POST['password']);

    // 🔄 Build update query
    if (!empty($new_pass)) {
        $hashed_pass = md5($new_pass); // ⚠️ MD5 Hashing (not recommended for real use)
        $update = "UPDATE user SET name = '$new_name', email = '$new_email', password = '$hashed_pass' WHERE id = {$user['id']}";
    } else {
        $update = "UPDATE user SET name = '$new_name', email = '$new_email' WHERE id = {$user['id']}";
    }

    // ✅ Execute and update session
    if ($conn->query($update)) {
        $_SESSION['name']  = $new_name;
        $_SESSION['email'] = $new_email;

        header('Location: profile.php');
        exit();
    } else {
        echo "❌ Error: " . $conn->error;
    }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Edit Profile - VoteVision</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f0f2f5;
            padding: 50px 0;
        }

        .edit-card {
            background: white;
            padding: 30px;
            border-radius: 12px;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="edit-card">
            <h2 class="text-center mb-4">✏️ Edit Profile</h2>
            <form method="POST">
                <!-- Name -->
                <div class="mb-3">
                    <label class="form-label">Name:</label>
                    <input type="text" name="name" value="<?= htmlspecialchars($user['name']) ?>" class="form-control" required>
                </div>
                <!-- Email -->
                <div class="mb-3">
                    <label class="form-label">Email:</label>
                    <input type="email" name="email" value="<?= htmlspecialchars($user['email']) ?>" class="form-control" required>
                </div>
                <!-- Password -->
                <div class="mb-3">
                    <label class="form-label">New Password (leave empty if unchanged):</label>
                    <input type="password" name="password" class="form-control">
                </div>
                <!-- Submit -->
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-primary">✅ Save Changes</button>
                    <a href="profile.php" class="btn btn-outline-secondary">⬅️ Cancel</a>
                </div>
            </form>
        </div>
    </div>
</body>

</html>