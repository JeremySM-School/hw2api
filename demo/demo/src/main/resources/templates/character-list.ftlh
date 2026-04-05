<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="indexstyle.css">
    
    <title>Document</title>
</head>
<body>
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

<div class="d-flex gap-5">
<div class="col-md-1 ms-3"></div>

<#list characterList as character>
    <div class="card" style="width: 18rem;">
      <img src="images/star1.jpg" class="card-img-top" alt="Character Image">
      
      <div class="card-body">
        <h5 class="card-title">${character.charactername}</h5>
        <p class="card-text">                                     
            <strong>Universe:</strong> ${character.characteruniverse} 
            <br><strong>Species:</strong> ${character.characterspecies}
            <br><strong>Description:</strong> ${character.characterdescription}
        </p>
        
        
        <a href="/characters/${character.characterid}" class="btn btn-primary">Bio Page</a>
        

        <a href="/characters/delete/${character.characterid}" class="btn btn-danger btn-sm mt-2">Delete</a>
      </div>
    </div>
  </#list>



</body>
</html>