<?php
// create database connection
$conn = new mysqli("localhost", "root", "", "character_db");

// Add character
if (isset($_POST['add'])){
    $name = $_POST['name'];
    $role = $_POST['role'];
    $book = $_POST['book'];
    $conn->query("INSERT INTO book_characters (name, role, book) VALUES ('$name','$role','$book')");
    header("Location: index.php");
    exit;
}

// update character
if (isset($_POST['update'])){
    $id = $_POST['id'];
    $name = $_POST['name'];
    $role = $_POST['role'];
    $book = $_POST['book'];
    $conn->query("UPDATE book_characters SET name='$name', role='$role', book='$book' WHERE id=$id");
    header("Location: index.php");
    exit;
}

//delete character
if (isset($_GET['delete'])){
   $id = $_GET['delete'];
   $conn->query("DELETE FROM book_characters WHERE id=$id");
   header("Location: index.php");
   exit;
}

$editMode = false;
if (isset($_GET['edit'])) {
   $editMode = true;
   $id = $_GET['edit'];
   $editResult = $conn->query("SELECT * FROM book_characters WHERE id=$id");
   $editData = $editResult->fetch_assoc();
}

// load all character
$result = $conn->query("SELECT * FROM book_characters");
?>
<!DOCTYPE html>
<html lang = "en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale= 1.0">
<title>Book Characters</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<style>
.btn-primary:hover {
 background-color : #0047ab !important;
 color : #fff;
}
.btn-warning:hover {
 background-color : #cc8800 !important;
 color : #fff;
}
.btn-danger:hover {
 background-color : #a80000 !important;
 color : #fff;
}
</style>
</head>
<body class="bg-light">
<div class="container mt-5">
<h2 class="text-center mb-4"><?= $editMode ? "Edit Character" : "Add New Character" ?></h2>
<form method = "POST" class="mb-4">
<?php if ($editMode): ?>
<input type="hidden" name="id" value="<?= $editData['id'] ?>">
<?php endif; ?>
<div class="row g-3">
<div class="col-md-4">
<input type="text" name="name" class="form-control" placeholder="Name" required value="<?= $editMode ? $editData['name'] : '' ?>">
</div>
<div class="col-md-3">
<input type="text" name="role" class="form-control" placeholder="Role" required value="<?= $editMode ?  $editData['role'] : '' ?>">
</div>
<div class="col-md-4">
<input type="text" name="book" class="form-control" placeholder="Book" required value="<?= $editMode ?  $editData['book'] : '' ?>">
</div>
<div class="col-md-1 d-grid">
<button type="submit" name="<?= $editMode ? 'update' : 'add' ?>" class="btn btn-<?= $editMode ? 'warning' : 'primary' ?>">
<?= $editMode ? 'Update' : 'Add' ?>
</button>
</div>
</div>
</form>
<div class="table-responsive">
<table id="characterTable" class="table table-striped table-bordered fs-5">
<thead class="table-dark">
<tr>
<th>ID</th>
<th>Name</th>
<th>Role</th>
<th>Book</th>
<th>Actions</th>
</tr>
</thead>
<tbody>
<?php while($row= $result->fetch_assoc()): ?>
<tr>
<td><?= htmlspecialchars($row['id']) ?></td>
<td><?= htmlspecialchars($row['name']) ?></td>
<td><?= htmlspecialchars($row['role']) ?></td>
<td><?= htmlspecialchars($row['book']) ?></td>
<td>
<a href ="index.php?edit=<?= $row['id'] ?>" class="btn btn-sm btn-warning">Edit</a>
<a href ="index.php?delete=<?= $row['id'] ?>" class="btn btn-sm btn-danger" onclick="return confirm('Delete this character?')">Delete</a>
</td>
</tr>
<?php endwhile; ?>
</tbody>
</table>
</div>
</div>
 <script>
 $(document).ready(function() {
    $('#characterTable').DataTable({
     "lengthMenu":[10, 25, 50, 100, 250, 500],
    "pagingType": "simple_numbers",
    "language": {
    "search" : "Filter records:"
   }
});
});
  </script>	
</body>
</html>
