<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="../images/combined-logo.png" alt="Music is life" height="80px">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Đăng nhập</a>
                            </li>
                        </ul>
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
        <main class="container vh-100 mt-5">
            <div class="row">
                <div class="col align-self-center"></div>
                <div class="col align-self-center">
                    <form action="" method="post">
                        <div class="card">
                            <div class="card-header">
                                <h4>Sign In</h4>
                            </div>
                            <div class="card-body">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-user"></i></span>
                                    <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-key"></i></span>
                                    <input type="text" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                    <label class="form-check-label" for="flexCheckChecked">
                                        Remember me
                                    </label>
                                </div>
                                <div class="d-flex justify-content-end">
                                    <input type="submit" value="Login" name="" class="btn btn-warning px-4">
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="text-center p-3">
                                    <p>Dont have an account?<a href="#" class="text-warning">Sign up</a></p>
                                    <a href="#" class="text-warning">Forgot your password?</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col align-self-center"></div>
            </div>
        </main>
    </div>
</body>

</html>