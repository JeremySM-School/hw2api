<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="ncf.css">


    <title>Document</title>
</head>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Character Cards</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
        <a class="nav-link" href="details.html">Character Details</a>
        <a class="nav-link" href="about.html">About</a>
        <a class="nav-link" href="new-character-form.html">Add Cartoon</a>
      </div>
    </div>
  </div>
</nav>
<nav class="navbar bg-body-tertiary">
  <div class="container-fluid">
    <form class="d-flex" role="search">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>

<body>

<h1>Character Card Creation Form</h1>

<form>
  <div class="form-group">
    <label for="formGroupExampleInput">Character name:</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Name">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Character Universe:</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Universe">
  </div>
</form>


<form>
  <div class="form-group">
    <label for="formGroupExampleInput">Character Role:</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Role">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Power Level</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Level, feats, powers etc.">
  </div>

<div class="form-group">
    <label for="formGroupExampleInput2">Species</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Species">
  </div>

<div class="form-group">
    <label for="formGroupExampleInput2">Short Description</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Description">
  </div>

</form>

    <form>
  <div class="form-group">
    <label for="exampleFormControlFile1">Character Image here:
        
    </label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
</form>
</body>
</html>