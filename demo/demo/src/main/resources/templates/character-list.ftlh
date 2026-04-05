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
  <img src="images/star1.jpg" class="card-img-top">
  <div class="card-body">
    <h5 class="card-title">${character.name}</h5>
    <p class="card-text">                                                          
        Universe: ${character.universe} 
        <br>Role: ${character.role} 
        <br>Power level: ${character.powerLevel}
        <br>Species: ${character.species}</p></p>
    <a href="about.html" class="btn btn-primary">Bio Page</a>
  </div>
</div>

</#list>

<div class="card" style="width: 18rem;">
  <img src="images/star1.jpg" class="card-img-top">
  <div class="card-body">
    <h5 class="card-title">Star Butterfly</h5>
    <p class="card-text">                                                          
        Universe: Mewni 
        <br>Role: Princess 
        <br>Power level: Can play with the fabric of magic.
        <br>Species: Mewman</p></p>
    <a href="about.html" class="btn btn-primary">Bio Page</a>
  </div>
</div>

<div class="card" style="width: 18rem;">
    <img src="images/steven.png" class="card-img-top">
    <div class="card-body">
      <h5 class="card-title">Steven Universe</h5>
      <p class="card-text">
        Universe: None/Normal Earth 
        <br>Role: Rebel Leader 
        <br>Power level: Summons defensive weapons from his gem on my stomach.
        <br>Species: Gem/Human </p></p>
      <a href="about.html" class="btn btn-primary">Bio Page</a>
    </div>
  </div>

<div class="card" style="width: 18rem;">
    <img src="images/jake.jpg" class="card-img-top">
    <div class="card-body">
      <h5 class="card-title">Jake the Dog (best boy)</h5>
      <p class="card-text">
        Universe: OOO
        <br>Role: Champion/Big Brother
        <br>Power level: Alien stretchy powers, and S-tier dancing.
        <br>Species: Alien/Dog </p></p>
      <a href="about.html" class="btn btn-primary">Bio Page</a>
    </div>
  </div>

  <div class="card" style="width: 18rem;">
    <img src="images/danny.jpg" class="card-img-top">
    <div class="card-body">
      <h5 class="card-title">Danny Phantom</h5>
      <p class="card-text">
        Universe: None/Normal Earth 
        <br>Role: Ghost Security 
        <br>Power level: Intangability, high strength, frost powers, lasers, cloning.
        <br>Species: Ghost/Human </p></p>
      <a href="about.html" class="btn btn-primary">Bio Page</a>
    </div>
  </div>

  <div class="card" style="width: 18rem;">
    <img src="images/actualgoat.jpg" class="card-img-top">
    <div class="card-body">
      <h5 class="card-title">TURT!</h5>
      <p class="card-text">
        Universe: Pokemon
        <br>Role: Loveable Island
        <br>Power level: Causes earthquakes, best boy, defensive god with absolutely no weaknesses (whats ice?).
        <br>Species: Best Tortoise </p></p>
     <a href="about.html" class="btn btn-primary">Bio Page</a>
    </div>
  </div>


<p> </p>


</body>
</html>