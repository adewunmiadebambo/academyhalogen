//$(document).ready(function() {
$(function() {
	
	//all Checkbox in a page
	$('#all_id').click(function(){

		 if($('#all_id').is(':checked')){
   			$(".check").attr("checked" ,"checked");
    		}
   			else
    		{
        		$(".check").removeAttr('checked');
    		}		
	});

});


  function validateEmail(sEmail) {
    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (filter.test(sEmail)) {
        return true;
    }
    else {
        return false;
    }
}

function btn_confirm()
{
	return confirm('Are you sure you want to take this action?');	
}