<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>${character.charactername} | Profile</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/indexstyle.css">
</head>

<body>

  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="/characters/all">Character Cards</a>
      <div class="navbar-nav">
        <a class="nav-link" href="/characters/all">Home</a>
        <a class="nav-link" href="/characters/about">About</a>
        <a class="nav-link" href="/characters/add">Add Cartoon</a>
      </div>
    </div>
  </nav>

  <div class="container mt-5">
    <div class="row">
      <div class="col-md-4 text-center">
        <img src="/images/star1.jpg" class="img-fluid rounded shadow-lg" alt="Character Image">
      </div>

      <div class="col-md-8">
        <h1 class="display-4">${character.charactername}</h1>
        <p class="lead text-primary">${character.characterspecies} • ${character.characteruniverse}</p>
        <hr>

        <div class="description-section">
          <h4>Character Bio</h4>
          <p style="line-height: 1.8; font-size: 1.1rem;">
            ${character.characterdescription}
          </p>
        </div>

        <div class="mt-5">
          <a href="/characters/all" class="btn btn-outline-secondary">← Back to Gallery</a>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>