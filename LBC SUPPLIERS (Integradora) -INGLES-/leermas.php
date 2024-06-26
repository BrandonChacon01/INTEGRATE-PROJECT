<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>LBC Suppliers - Productos</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

   <!-- Favicon -->
   <link href="../img/Logo-icon.png" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="../lib/animate/animate.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner"></div>
    </div>
    <!-- Spinner End -->

 <!-- Topbar Start -->
 <div class="container-fluid bg-dark px-5 d-none d-lg-block" style="height: 40px;">
        <div class="row gx-0">
            <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center" style="height: 40px;">
                    <small class="me-3 text-light"><i class="fa fa-phone-alt me-2"></i>614-278-1051</small>
                    <small class="text-light"><i class="fa fa-envelope-open me-2"></i>baylon@Ibcsuppliers.com</small>
                </div>
            </div>
            <div class="col-lg-4 text-center text-lg-end">
                <div class="d-inline-flex align-items-center ms-auto" style="padding-top: 5px;">
                    <label class="toggle-switch">
                        <input type="checkbox">
                        <span class="slider"></span>
                    </label>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Topbar End -->


 <!-- Navbar Start -->
 <div class="container-fluid position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
        <a href="index.html" class="navbar-brand p-0">
            <h1 class="m-0"></i><img src="../img/logo-LBc.png" alt="Image" style="height: 55px; width: 120px;"></h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
       <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="index.html" class="nav-item nav-link">Inicio</a>
                <a href="nosotros.html" class="nav-item nav-link ">Nosotros</a>
                <div class="nav-item dropdown">
                    <a href="actividades.html" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">¿Que hacemos?</a>
                    <div class="dropdown-menu m-0">
                        <a href="actividades.html" class="dropdown-item">Actividades</a>
                        <a href="servicios.html" class="dropdown-item">Servicios</a>
                        
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="productos.php" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Productos</a>
                    <div class="dropdown-menu m-0">
                        <a href="productos.php" class="dropdown-item active">Catalogo</a>
                        <a href="solicitud.php" class="dropdown-item">Realizar cotizacion</a>
                        
                    </div>
                </div>
                <a href="contact.html" class="nav-item nav-link">Contacto</a>
            </div>
            <a href="admin/login.php" class="btn btn-primary py-2 px-4 ms-3" style="background-color: #061429; color: white;">Admin</a>
        </div>
    </nav>

    <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
        <div class="row py-5">
            <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                <h1 class="display-4 text-white animated zoomIn">Productos</h1>
                <a href="" class="h5 text-white">LBC</a>
                <a href="" class="h5 text-white">Suppliers & services</a>
            </div>
        </div>
    </div>
</div>
<!-- Navbar End -->



    <!-- Full Screen Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->

    <?php
require_once '../config.php';
$error_message = '';
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $product_id = intval($_GET['id']);
    $sql = "CALL SelectProduct(?)";
    if ($stmt = mysqli_prepare($mysqli, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $product_id);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if ($result->num_rows === 1) {
            $row = $result->fetch_assoc();
            $caracteristicas = explode("\n", $row['Attributes']);

            ?>

            <div class="container py-5">
                <div class="row">
                    <div class="col-md-6">
                        <img class="img-fluid" src="../<?php echo $row['URL_images']; ?>" alt="Imagen del producto">
                    </div>
                    <div class="col-md-6">
                        <h2><?php echo $row['Name_product']; ?></h2>
                        <br>
                        <p><?php echo $row['Description']; ?></p>
                    
                        <strong>Características:</strong>
                        <br>
                        <br>
                        <ul>
                            <?php
                            foreach ($caracteristicas as $caracteristica) {
                                echo "<p>$caracteristica</p>";
                            }
                            ?>
                        </ul>
                        <br>
                        <a class="btn btn-primary" href="productos.php">Regresar al catálogo</a>
                    </div>
                </div>
            </div>
<?php
        } else {
            $error_message = "Producto no encontrado.";
        }

        mysqli_stmt_close($stmt);
    } else {
        $error_message = "Error en la consulta.";
    }

    $mysqli->close();
} else {
    $error_message = "ID de producto no válido.";
}

if (!empty($error_message)) {
    header("Location: productos.php?error=" . urlencode($error_message));
    exit();
}
?>




       <!-- Vendor Start -->
       <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5 mb-5">
            <div class="bg-white">
                <div class="owl-carousel vendor-carousel">
                    <img src="img/marca1.png" alt="">
                    <img src="img/marca2.png" alt="">
                    <img src="img/marca3.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->
    

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light mt-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-4 col-md-6 footer-about">
                    <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-4">
                        <a href="index.html" class="navbar-brand">
                            <h1 class="m-0 text-white"><img src="../img/logo-LBc.png" alt="Image" style="height: 120px; width: 200px;"><i></i></h1>
                        </a>
                        <br>
                        <p class="mt-3 mb-4">“Comprometidos con la Seguridad <br> la Eficiencia y la Calidad”</p>
                        <p>LBC Suppliers & Services S.A. de C.V.</p>
                       
                    </div>
                </div>
                <div class="col-lg-8 col-md-6">
                    <div class="row gx-5">
                        <div class="col-lg-4 col-md-12 pt-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">Seguimos en Contacto</h3>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-geo-alt text-primary me-2"></i>
                                <p class="mb-0">Ave. Francisco Villa #7503
                                    Col. Panamericana
                                    Chihuahua, Chih. C.P. 31210</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-primary me-2"></i>
                                <p class="mb-0"><a href="mailto:baylon@Ibcsuppliers.com">baylon@Ibcsuppliers.com</a></p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-telephone text-primary me-2"></i>
                                <p class="mb-0"><a href="tel:+526142781051">+52 614-278-1051</a></p>
                            </div>             
                        </div>
                        <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">Links</h3>
                            </div>
                            <div class="link-animated d-flex flex-column justify-content-start">
                                <a class="text-light mb-2" href="index.html"><i class="bi bi-arrow-right text-primary me-2"></i>Inicio</a>
                                <a class="text-light mb-2" href="nosotros.html"><i class="bi bi-arrow-right text-primary me-2"></i>Nosotros</a>
                                <a class="text-light mb-2" href="actividades.html"><i class="bi bi-arrow-right text-primary me-2"></i>¿Que hacemos?</a>                                
                                <a class="text-light mb-2" href="productos.php"><i class="bi bi-arrow-right text-primary me-2"></i>Productos</a>
                                <a class="text-light" href="contact.html"><i class="bi bi-arrow-right text-primary me-2"></i>Contacto</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="text-light mb-0">Distribuidores</h3>
                            </div>
                            <div class="link-animated d-flex flex-column justify-content-start">
                                <a class="text-light mb-2" href="https://www.eagleresearchcorp.com/"><i class="bi bi-arrow-right text-primary me-2"></i>Eagle Research Corporation</a>
                                <a class="text-light mb-2" href="https://www.sick.com/mx/es/"><i class="bi bi-arrow-right text-primary me-2"></i>SICK | Sensor Intelligence</a>
                                <a class="text-light" href="https://www.ge.com/digital/"><i class="bi bi-arrow-right text-primary me-2"></i>GE Intelligent Platforms</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-white" style="background: #061429;">
        <div class="container text-center">
            <div class="row justify-content-end">
                <div class="col-lg-8 col-md-6">
                    <div class="d-flex align-items-center justify-content-center" style="height: 75px;">
                        <p class="mb-0">&copy; <a class="text-white border-bottom" href="#">LBC Suppliers & Services</a>. All Rights Reserved. 
						
						Designed by <a class="text-white border-bottom" href="team.html">Ricardo T., Daniel B., Brandon C.</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->

    <style>
        /* Estilos básicos del interruptor */
        .toggle-switch {
          position: relative;
          display: inline-block;
          width: 60px;
          height: 30px;
          border-radius: 15px;
          background-color: #2196F3;
        }
      
        /* Estilos del círculo deslizante */
        .toggle-switch input[type="checkbox"] {
          opacity: 0;
          width: 0;
          height: 0;
        }
      
        /* Estilos del círculo deslizante */
        .toggle-switch input[type="checkbox"] + .slider {
          position: absolute;
          cursor: pointer;
          top: 0;
          bottom: 0;
          background-color: #2196F3;
          border-radius: 15px;
          transition: 1.s;
          left: 0; /* Agregamos left inicialmente a 0 */
        }
      
        /* Estilo del círculo deslizante en el estado encendido */
        .toggle-switch input[type="checkbox"]:checked + .slider {
          background-color: #2196F3;
          right: calc(100% - 26px); /* Movemos el círculo deslizante a la derecha */
        }
      
        /* Estilos de las imágenes */
        .toggle-switch .slider:before {
          position: absolute;
          content: "";
          height: 26px;
          width: 26px;
          left: 30px;
          bottom: 2px;
          background-image: url('../img/icono-ing.png');
          background-size: cover;
          border-radius: 50%;
          transition: 1.5s;
          background-color: #2196F3;
        }
      
        /* Estilo de la imagen en el estado encendido */
        .toggle-switch input[type="checkbox"]:checked + .slider:before {
          background-image: url('../img/icono-ing.png');
        }
      </style>
      
      <script>
        
        const toggleSwitch = document.querySelector('input[type="checkbox"]');
        toggleSwitch.addEventListener('change', () => {
          if (toggleSwitch.checked) {
            // Cambiar a la página de inglés
            window.location.href = '../productos.php';
          } else {
            // Cambiar a la página de español
            window.location.href = 'LBC SUPPLIERS (Integradora) -INGLES-/index.html';
          }
        });
      </script>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


      <!-- JavaScript Libraries -->
      <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/wow/wow.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/counterup/counterup.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="../js/main.js"></script>
</body>

</html>