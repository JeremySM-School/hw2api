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
    <a class="navbar-brand" href="/characters/all">Character Cards</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link" href="/characters/all">Home</a>
        
        <a class="nav-link" href="/characters/about">About</a>
        
        <a class="nav-link" href="/characters/add">Add Cartoon</a>
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

<form action="/characters/save" method="post">

  <div class="form-group">
    <label for="formGroupExampleInput">Character name:</label>
    <input type="text" name="charactername" class="form-control" id="formGroupExampleInput" placeholder="e.g. Jake the Dog" required>
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Character Universe:</label>
    <input type="text" name="characteruniverse" class="form-control" id="formGroupExampleInput2" placeholder="Universe">
  </div>




  <div class="form-group">
    <label for="formGroupExampleInput2">Character Role:</label>
    <input type="text" name="characterrole" class="form-control" id="formGroupExampleInput2" placeholder="Role">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Power Level</label>
    <input type="text" name="powerlevel" class="form-control" id="formGroupExampleInput2" placeholder="Level, feats, powers etc.">
  </div>

<div class="form-group">
    <label for="formGroupExampleInput2">Species</label>
    <input type="text" name="characterspecies" class="form-control" id="formGroupExampleInput2" placeholder="Species">
  </div>

<div class="form-group">
    <label for="formGroupExampleInput2">Short Description</label>
    <input type="text" name="characterdescription" class="form-control" id="formGroupExampleInput2" placeholder="Description">
  </div>



    
  <div class="form-group">
    <label for="exampleFormControlFile1">Character Image here:
        
    </label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">

    <button type="submit" class="btn btn-primary mt-3">Create Character</button>
    <a href="/characters/all" class="btn btn-secondary mt-3">Cancel</a>

  </div>
</form>
</body>
</html>