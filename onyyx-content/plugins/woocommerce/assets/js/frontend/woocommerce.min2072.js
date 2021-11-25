$(function(){
$('.orderby').on('change',function(e){
$(this).closest('form').trigger('submit');
});
});