//save Add Features Details JS
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
					url: 'saveAddFeaturesDetails',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response.message);
						window.location.href = "addFeatures";
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
		
//get All data in Add Features Table in Admin   	
function getDatainAddFeatures() {
	 	
    	$.ajax({
    		type: "post",
    		contentType: "application/json",
    		url: "getAllAddFeaturesData",
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
                                <td> <button type="button" class="btn btn-primary rounded-pill m-2" onclick="deleteRowOfAddFeatures(${value.id})">Delete</button></td>
                              
                            </tr>`
					);
				}).join('');
				const tabelBodyShare = document.querySelector("#tableBodyAddFeatures");
				tabelBodyShare.innerHTML = tableData;
			}


    		},
    		error: function() {
    			alert("Device control failed");
    		}
    	});

    }	
 //function for delete Add Features data by Id
 function deleteRowOfAddFeatures(rowId) {
	
		var input = {
		"id":rowId
	}
	const myJson = JSON.stringify(input);	

      $.ajax({
        url: 'deleteAddFeaturesDataById',
        contentType: "application/json", 
        type: 'POST',
        data:myJson ,
        success: function(response) {
          
          alert(response);
          window.location.href = "addFeatures";
        },
        error: function(xhr, status, error) {
          console.error('Error deleting row:', error);
        }
      });
    }	