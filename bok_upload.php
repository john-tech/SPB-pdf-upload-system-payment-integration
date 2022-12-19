<?php

include 'connection.php'; 
session_start();
// if (isset($_POST['submit'])) {
//     echo $userid = $_SESSION['userid'];
//     $folder_path = 'add_user/';
//     $filename = basename($_FILES['healthfile']['name']);
//     $newname = $folder_path . $filename;
//     if ($_FILES['healthfile']['type'] == "application/pdf") {
//         if (move_uploaded_file($_FILES['healthfile']['tmp_name'], $newname)) {

//             $filesql = "INSERT INTO upload_pdf(pdfs,user_id) VALUES('$filename','$userid')";
//             $fileresult = mysqli_query($db, $filesql);
//         } else {
//             echo "<p>Upload Failed.</p>";
//         }
//         if (isset($fileresult)) {
//             echo 'Success';
//         } else {
//             echo 'fail';
//         }
//     } else {
//         echo "<p>Class notes must be uploaded in PDF format.</p>";
//     }
// }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>SPB</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
     <link href="assets/css/scrollspyNav.css" rel="stylesheet" type="text/css" />
    <link href="plugins/file-upload/file-upload-with-preview.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <script src="https://js.stripe.com/v3/"></script>
    <style>
    #content>.container {
        max-width: 88.333333% !important;
    }
    </style>
</head>

<body class="alt-menu sidebar-noneoverflow" data-spy="scroll" data-target="#navSection" data-offset="100">
    <!--  BEGIN MAIN CONTAINER  -->
    <div class="main-container sidebar-closed sbar-open" id="container">
        <?php include 'nav.php'; ?>

        <div class="overlay"></div>
        <div class="cs-overlay"></div>
        <div class="search-overlay"></div>
        <!--  BEGIN SIDEBAR  -->
        <?php include 'sidebar.php'; ?>
        <!--  END SIDEBAR  -->

        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            <div class="container">
                <div class="container">

                    <div class="row layout-top-spacing">

                        <div id="fuSingleFile" class="col-lg-12 layout-spacing">
                            <div class="statbox widget box box-shadow">
                                <div class="widget-header">
                                    <div class="row">
                                        <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                            <h4> Book Upload</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content widget-content-area">
                                    <form action="payment_api.php" method="post" enctype="multipart/form-data"
                                        id="payment-form" class="paymntform">
                                        <div class="custom-file-container" data-upload-id="myFirstImage">
                                            <label>Upload Book (in pdf) <a href="javascript:void(0)"
                                                    class="custom-file-container__image-clear"
                                                    title="Clear Image">x</a></label>
                                            <label class="custom-file-container__custom-file">
                                                <input type="file" name="file"
                                                    class="custom-file-container__custom-file__custom-file-input">
                                                <span
                                                    class="custom-file-container__custom-file__custom-file-control"></span>
                                            </label>
                                            <!-- <div class="custom-file-container__image-preview"></div> -->
                                        </div>
                                        <br>
                                        <script language="javascript">
                                        <?php  
                                      $result2 = mysqli_query($db, "SELECT * FROM `upload_pdf`");

                                        $newsCount = mysqli_num_rows($result2); // Count the output amount

                                        if ($newsCount == 0) { 
                                        
                                            // echo "1";
                                        }else{
                                           
                                            echo '
                                        </script>';
                                        echo '
                                        <select class="form-control" onchange="yesnoCheck(this);">
                                            <option value="">Payment Method</option>
                                            <option value="lada">Stripe</option>
                                            <option value="paypal1">Paypal</option>
                                        </select>
                                        <br>
                                        <div id="paypal" style="display: none;"> <label for="car">Amount</label> <input
                                                type="text" class="form-control" name="amount2" value="20.00" /><br />
                                        </div>
                                        <br>
                                        <div id="strip" style="display: none;">
                                            <div class="mb-3" style="display: none;"> <label for="exampleFormControlInput1"
                                                    class="form-label">Enter Ammount</label> <input type="text"
                                                    name="amount" id="demoInput" readonly value="100"
                                                    class="form-control">
                                            </div>
                                            <div id="card-element"> </div>
                                            <div id="card-errors" role="alert"></div>
                                        </div>';

                                        }
                                        mysqli_close($db);
                                        ?>
                                        </script>
                                        <br>
                                        <br>
                                        <div id="sub1">

                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                        <div style="display: none;" id="sub2">

                                            <button type="submit" name="submit2" class="btn btn-primary">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--  END CONTENT AREA  -->
    </div>
    <!-- END MAIN CONTAINER -->

    <script>
    function yesnoCheck(that) {
        if (that.value == "paypal1") {
            // alert("check");
            document.getElementById("paypal").style.display = "block";
            document.getElementById("strip").style.display = "none";
            document.getElementById("sub2").style.display = "block";
            document.getElementById("sub1").style.display = "none";

            $('.paymntform').removeAttr('id');


        } else {
            document.getElementById("paypal").style.display = "none";
            document.getElementById("strip").style.display = "block";
            document.getElementById("sub2").style.display = "none";
            document.getElementById("sub1").style.display = "block";

        }
    }

    var stripe = Stripe(
        "pk_test_51M35IfLsuGyV4cRXL5d9GrGV7UiTCSw84LcVwHXm4aqH3SIJsWtWSqFDMhmltCpzFQZVUpPD8zpEr18fuHNF3rl000AJifjLUl"
        );
    var elements = stripe.elements();
    var style = {
        base: {
            color: "#32325d",
            fontSmoothing: "antialiased",
            fontSize: "16px",
            "::placeholder": {
                color: "#aab7c4"
            }
        },
        invalid: {
            color: "#fa755a",
            iconColor: "#fa755a"
        }
    };
    var card = elements.create("card", {
        style: style
    });
    card.mount("#card-element");
    card.addEventListener("change", function(event) {
        var displayError = document.getElementById("card-errors");
        if (event.error) {
            displayError.textContent = event.error.message;
        } else {
            displayError.textContent = "";
        }
    });
    var form = document.getElementById("payment-form");
    form.addEventListener("submit", function(event) {
        event.preventDefault();
        stripe.createToken(card).then(function(result) {
            if (result.error) {
                var errorElement = document.getElementById("card-errors");
                errorElement.textContent = result.error.message;
            } else {
                stripeTokenHandler(result.token);
            }
        });
    });

    function stripeTokenHandler(token) {
        var form = document.getElementById("payment-form");
        var hiddenInput = document.createElement("input");
        hiddenInput.setAttribute("type", "hidden");
        hiddenInput.setAttribute("name", "stripeToken");
        hiddenInput.setAttribute("value", token.id);
        form.appendChild(hiddenInput);
        form.submit();
    }
    </script>
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="plugins/blockui/jquery.blockUI.min.js"></script>
    <script src="assets/js/app.js"></script>

    <script>
    $(document).ready(function() {
        App.init();
    });
    </script>
    <script src="plugins/highlight/highlight.pack.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="assets/js/scrollspyNav.js"></script>
    <script src="plugins/file-upload/file-upload-with-preview.min.js"></script>

    <script>
    //First upload
    var firstUpload = new FileUploadWithPreview('myFirstImage')
    //Second upload
    var secondUpload = new FileUploadWithPreview('mySecondImage')
    </script>
    <!-- END PAGE LEVEL PLUGINS -->
</body>

</html>