<script>
$(document).ready(function() {
$('#ajax_add_to_cart').each(function(){
var $btn = $(this);

$btn.on('click', function(){
var id = $btn.data('id');
var sku = $btn.data('sku');
var quantity = $btn.data('quantity');

$(".be-loader").fadeIn("slow");

$.ajax({
type: "POST",
url: "ajax-add-to-cart.php",
data: {id:id, sku:sku, quantity:quantity},
success: function(response){

$("#showcart").html(response);
$(".woocommerce-message").show();
$("#showcart").show();
$(".be-loader").fadeOut("slow");
}

}); 

});
});	
});
</script><script>
$(document).ready(function() {
$('#ajax_add_to_cart').each(function(){
var $btn = $(this);

$btn.on('click', function(){
var id = $btn.data('id');
var sku = $btn.data('sku');
var quantity = $btn.data('quantity');

$(".be-loader").fadeIn("slow");

$.ajax({
type: "POST",
url: "ajax-add-to-cart.php",
data: {id:id, sku:sku, quantity:quantity},
success: function(response){

$("#showcart").html(response);
$(".woocommerce-message").show();
$("#showcart").show();
$(".be-loader").fadeOut("slow");
}

}); 

});
});	
});
</script><script>
$(document).ready(function() {
$('#ajax_add_to_cart').each(function(){
var $btn = $(this);

$btn.on('click', function(){
var id = $btn.data('id');
var sku = $btn.data('sku');
var quantity = $btn.data('quantity');

$(".be-loader").fadeIn("slow");

$.ajax({
type: "POST",
url: "ajax-add-to-cart.php",
data: {id:id, sku:sku, quantity:quantity},
success: function(response){

$("#showcart").html(response);
$(".woocommerce-message").show();
$("#showcart").show();
$(".be-loader").fadeOut("slow");
}

}); 

});
});	
});
</script>$(document).ready(function() {
$('.ajax_add_to_cart').each(function(){
var $btn = $(this);

$btn.on('click', function(){
var id = $btn.data('id');
var sku = $btn.data('sku');
var quantity = $btn.data('quantity');

$(".be-loader").fadeIn("slow");

$.ajax({
type: "POST",
url: "ajax-add-to-cart.php",
data: {id:id, sku:sku, quantity:quantity},
success: function(response){

$("#showcart").html(response);
$(".woocommerce-message").show();
$("#showcart").show();
$(".be-loader").fadeOut("slow");
}

}); 

});
});	
});$(document).ready(function() {
$('.ajax_add_to_cart').each(function(){
var $btn = $(this);

$btn.on('click', function(){
var id = $btn.data('id');
var sku = $btn.data('sku');
var quantity = $btn.data('quantity');

$(".be-loader").fadeIn("slow");

$.ajax({
type: "POST",
url: "ajax-add-to-cart.php",
data: {id:id, sku:sku, quantity:quantity},
success: function(response){

$("#showcart").html(response);
$(".woocommerce-message").show();
$("#showcart").show();
$(".be-loader").fadeOut("slow");
}

}); 

});
});	
});