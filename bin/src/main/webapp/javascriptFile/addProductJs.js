//save Our Product Details JS
$(document).ready(function() {
			$('#submitBtn').click(function() {
				
				  if ($("#imageTitle").val() == "") {
             alert("Fill Image Title Name .!!!!!!");
             return;
                    }
                    
                      if ($("#imageShortDescription").val() == "") {
             alert("Fill  Image Short Description!!!");
             return;
                    }
                    
                      if ($("#imageExtraDescription").val() == "") {
             alert("Fill  Image Extra Description.!!!");
             return;
                    }
                    
                      if ($("#file").val() == "") {
             alert("Fill image!!!");
             return;
                    }
                    
                    
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'saveOurProductDetails',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response.message);
						window.location.href = "addProducts";
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});

//get All data in Our Product Table in Admin   	
 function getDatainAddProduct() {
	 	
    	$.ajax({
    		type: "post",
    		contentType: "application/json",
    		url: "getAllOurProductData",
    		asynch: false,
    		success: function(data) {
    		
    				for (let i = 0; i < data.length; i++) {
				var j =1;
				const tableData = data.map(function(value) {
					return (
						` 
                            <tr>
								<td>${j++}</td>
								<td>${value.id}</td>
                                <td>${value.imageTitle}</td>
                                <td>${value.imageShortDescription}</td>
                                <td>${value.imageExtraDescription}</td>
                                <td> <button type="button" class="btn btn-primary rounded-pill m-2" onclick="deleteRowOfOurProduct(${value.id})">Delete</button></td>
                              
                            </tr>`
					);
				}).join('');
				const tabelBodyShare = document.querySelector("#tableBodyOurProduct");
				tabelBodyShare.innerHTML = tableData;
			}


    		},
    		error: function() {
    			alert("Device control failed");
    		}
    	});

    }	
		
//delete Data By ID in Our Product	
  function deleteRowOfOurProduct(rowId) {
	
	//alert(rowId);
	
		var input = {
		"id":rowId
	}
	const myJson = JSON.stringify(input);	

      $.ajax({
        url: 'deleteAddProductDataById',
        contentType: "application/json", 
        type: 'POST',
        data:myJson ,
        success: function(response) {
          
          alert(response);
          window.location.href = "addProducts";
        },
        error: function(xhr, status, error) {
          console.error('Error deleting row:', error);
        }
      });
    }	
		
		
		
		