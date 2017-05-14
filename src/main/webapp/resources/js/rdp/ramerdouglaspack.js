var canvas = document.getElementById('myCanvas');
var ctx = canvas.getContext('2d');

var mouse = {x: 0, y: 0};
var circles=[];
canvas.addEventListener('mousemove', function(e) {
    mouse.x = e.pageX - this.offsetLeft;
    mouse.y = e.pageY - this.offsetTop;
}, false);

ctx.lineWidth = 3;
ctx.lineJoin = 'round';
ctx.lineCap = 'round';
ctx.strokeStyle = '#ff0000';
var index=0;


canvas.addEventListener('mousedown', function(e) {
    ctx.beginPath();
    ctx.moveTo(mouse.x, mouse.y);

    canvas.addEventListener('mousemove', onPaint, false);
}, false);

canvas.addEventListener('mouseup', function() {
    canvas.removeEventListener('mousemove', onPaint, false);
}, false);

var onPaint = function() {
    ctx.lineTo(mouse.x, mouse.y);
    ctx.stroke();
    var circle=mouse.x.toString()+" "+mouse.y.toString();
    circles[index]=circle;
    index++;
};

function returnCircles()
{
    return circles;
}
//
// $("#button").click( function()
//     {
//         alert(returnCircles());
//     }
// );

$("#clear").click( function()
    {
        ctx.clearRect(0,0,canvas.width,canvas.height);
        circles=[];
        index=0;
    }
);