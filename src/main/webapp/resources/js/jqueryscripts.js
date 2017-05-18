/**
 * Created by frincutudor on 5/18/17.
 */
$('#button').on('click', function() {
   // $parent_box = $(this).closest('.box');
   // $parent_box.siblings().find('.bottom').slideUp();
  // $parent_box.find('.bottom').slideToggle(1000, 'swing');
    $("#first").hide();
    $('#second').slideToggle(500,'swing');
});

$('#header').on('click',function () {
    $('#first').slideToggle(500,'swing')
    $('#second').slideToggle(500,'swing')
})
