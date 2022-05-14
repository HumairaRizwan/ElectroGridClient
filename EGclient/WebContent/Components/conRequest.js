$(document).ready(function()
{
	 $("#alertSuccess").hide();
 	 $("#alertError").hide();
});

// SAVE ============================================
$(document).on("click", "#btnSave", function(event)
{
	// Clear alerts---------------------
	$("#alertSuccess").text("");
 	$("#alertSuccess").hide();
 	$("#alertError").text("");
 	$("#alertError").hide();

	// Form validation-------------------
	var status = validateItemForm();
	if (status != true)
	{
		 $("#alertError").text(status);
 		 $("#alertError").show();
 		 return;
 	}
 	
	// If valid-------------------------
 	var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT";

	$.ajax(
 	{
 		url : "conRequestAPI",
 		type : type,
 		data : decodeURIComponent($("#formItem").serialize()),
 		dataType : "text",
 		complete : function(response, status)
 		{
 			onItemSaveComplete(response.responseText, status);
 		}
 	}); 
 });

	function onItemSaveComplete(response, status)
		{
			if (status == "success")
			{
				 var resultSet = JSON.parse(response);
	 			 if (resultSet.status.trim() == "success")
				 {
	 				$("#alertSuccess").text("Successfully saved.");
	 				$("#alertSuccess").show();
	 				$("#divItemsGrid").html(resultSet.data);
	 			 } 
	 			 else if (resultSet.status.trim() == "error")
				 {
	 				$("#alertError").text(resultSet.data);
	 				$("#alertError").show();
	 			 }
	 		} 
	 		else if (status == "error")
	 		{
	 			$("#alertError").text("Error while saving.");
	 			$("#alertError").show();
	 		} 
	 		else
	 		{
	 			$("#alertError").text("Unknown error while saving..");
	 			$("#alertError").show();
	 		}
			$("#hidItemIDSave").val("");
	 		$("#formItem")[0].reset();
	}

	// UPDATE==========================================
	$(document).on("click", ".btnUpdate", function(event)
	{
		 $("#hidItemIDSave").val($(this).data("connectionid"));
		 $("#customerName").val($(this).closest("tr").find('td:eq(0)').text());
		 $("#connectionType").val($(this).closest("tr").find('td:eq(1)').text());
		 $("#requestLoad").val($(this).closest("tr").find('td:eq(2)').text());
 		 $("#contractDemand").val($(this).closest("tr").find('td:eq(3)').text());
 		 $("#address").val($(this).closest("tr").find('td:eq(4)').text());
 		 $("#email").val($(this).closest("tr").find('td:eq(5)').text());
 		
	});
	
		
		$(document).on("click", ".btnRemove", function(event)
		{
	 		$.ajax(
	 		{
	 			url : "conRequestAPI",
	 			type : "DELETE",
	 			data : "connectionID=" + $(this).data("connectionid"),
	 			dataType : "text",
	 			complete : function(response, status)
	 			{
	 				onItemDeleteComplete(response.responseText, status);
	 			}
	 		});
		});

	
	function onItemDeleteComplete(response, status)
	{
		if (status == "success")
			{
				var resultSet = JSON.parse(response);
				if (resultSet.status.trim() == "success")
				{
					$("#alertSuccess").text("Successfully deleted.");
					$("#alertSuccess").show();
					$("#divItemsGrid").html(resultSet.data);
				} 
				else if (resultSet.status.trim() == "error")
				{
					$("#alertError").text(resultSet.data);
					$("#alertError").show();
				}
			} 
			else if (status == "error")
			{
					$("#alertError").text("Error while deleting.");
					$("#alertError").show();
			} 
			else
			{
					$("#alertError").text("Unknown error while deleting..");
					$("#alertError").show();
			}
	}
		
		

	// CLIENT-MODEL================================================================
	function validateItemForm()
	{
		// NAME
		if ($("#customerName").val().trim() == "")
		{
 			return "Insert connection name.";
 		}

		// TYPE
		if ($("#connectionType").val().trim() == "")
 		{
 			return "Insert connection type.";
 		}

		// LOAD-------------------------------
		if ($("#requestLoad").val().trim() == "")
 		{
 			return "Insert connection requestLoad.";
 		}
 		
		// DEMAND------------------------
		if ($("#contractDemand").val().trim() == "")
		{
 			return "Insert connection contractDemand.";
 		}

		// DESCRIPTION------------------------
		if ($("#address").val().trim() == "")
		{
 			return "Insert connection address.";
 		}
		
		// EMAIL------------------------
		if ($("#email").val().trim() == "")
		{
 			return "Insert connection email.";
 		}

		return true;
	}
	
