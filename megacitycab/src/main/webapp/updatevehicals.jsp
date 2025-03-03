<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Vehicle</title>
    <link rel="stylesheet" href="CSS/add_vehical.css">
    <script defer src="JS/update_vehicles.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>

    <div class="form-container">
        <!-- Left Side (Full Image) -->
        <div class="form-image">
            <img id="vehiclePreview" src="data:image/jpeg;base64,${param.vimage}" alt="Vehicle Image">
        </div>

        <!-- Right Side (Form) -->
        <div class="form-content">
            <h2><i class="fas fa-car"></i> Update Vehicle</h2>
            <br>

            <form method="post" action="updateVehical" enctype="multipart/form-data">
                <div class="input-group">
                    <label for="vnumber"><i class="fas fa-hashtag"></i> Vehicle Number</label>
                    <input type="text" name="vnumber" id="vnumber" value="${param.vnumber}" required>
                </div>

                <div class="input-group">
                    <label for="vtype"><i class="fas fa-car-side"></i> Vehicle Type</label>
                    <input type="text" name="vtype" id="vtype" value="${param.vtype}" required>
                </div>

                <div class="input-group">
                    <label for="vmodel"><i class="fas fa-car"></i> Vehicle Model</label>
                    <input type="text" name="vmodel" id="vmodel" value="${param.vmodel}" required>
                </div>

                <div class="input-group">
                    <label for="vseat"><i class="fas fa-chair"></i> Number of Seats</label>
                    <input type="text" name="vseat" id="vseat" value="${param.vseat}" required>
                </div>

                <div class="input-group">
                    <label for="vimage"><i class="fas fa-image"></i> Vehicle Image</label>
                    <input type="file" name="vimage" id="vimage" accept="image/*" onchange="previewImage(event)">
                </div>
                
                <br>

                <button type="submit" class="submit-btn"><i class="fas fa-save"></i> Update</button>
            </form>
        </div>
    </div>

    <script>
        function previewImage(event) {
            const reader = new FileReader();
            reader.onload = function () {
                document.getElementById('vehiclePreview').src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>

</body>
</html>
