<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/indexstyle.css">
  <title>Character Cards</title>
</head>

<body>

  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Character Cards</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-link active" href="/characters/all">Home</a>
          <a class="nav-link" href="/characters/about">About</a>
          <a class="nav-link" href="/characters/add">Add Cartoon</a>
        </div>
      </div>
    </div>
  </nav>

  <nav class="navbar bg-body-tertiary">
    <div class="container-fluid">
      <form class="d-flex" role="search" action="/characters/search" method="GET">
        <input class="form-control me-2" name="query" type="search" placeholder="Search character..."
          aria-label="Search" />
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </nav>

  <div class="container mt-4">
    <div class="d-flex flex-wrap gap-5 justify-content-center">
      <#list characterList as character>
        <div class="card" style="width: 18rem;">
          <img src="${character.characterimageurl!'/images/default-avatar.jpg'}" class="card-img-top"
            alt="${character.charactername}">
          <div class="card-body">
            <h5 class="card-title">${character.charactername}</h5>
            <p class="card-text">
              <strong>Universe:</strong> ${character.characteruniverse} <br>
              <strong>Species:</strong> ${character.characterspecies} <br>
              <strong>Description:</strong> ${character.characterdescription}
            </p>
            <div class="d-grid gap-2">
              <a href="/characters/details/${character.characterid}" class="btn btn-primary">Bio Page</a>
              <a href="/characters/delete/${character.characterid}" class="btn btn-danger btn-sm"
                onclick="return confirm('Are you sure you want to delete ${character.charactername}?')">Delete</a>
            </div>
          </div>
        </div>
      </#list>
    </div>
  </div>

</body>

</html>