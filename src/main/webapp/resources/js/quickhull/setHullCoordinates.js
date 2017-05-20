/**
 * Created by Joywalker on 5/20/2017.
 */
var canvas = document.getElementById('inputCanvas');
var ctx = canvas.getContext('2d');

var mouse = {x: 0, y: 0};
var dots=[];
canvas.addEventListener('mousedown', function(e) {
    var rect = canvas.getBoundingClientRect();
    mouse.x = e.pageX - rect.left;
    mouse.y = e.pageY - rect.top;
}, false);

ctx.lineWidth = 3;
ctx.lineJoin = 'round';
ctx.lineCap = 'round';
ctx.strokeStyle = '#ff0000';
var index=0;

canvas.addEventListener("mousedown", getPosition, false);

function getPosition(event)
{
    var x = event.x;
    var y = event.y;

    var canvas = document.getElementById("inputCanvas");

    x -= canvas.offsetLeft;
    y -= canvas.offsetTop;
    ctx.fillRect(x,y,1,1);
    var point=x.toString()+" "+y.toString();
    dots[index]=point;
    index++;
}

function returnDots()
{
    return dots;
}
$("#clear").click( function()
    {
        ctx.clearRect(0,0,canvas.width,canvas.height);
        var canvas2 = document.getElementById("outputCanvas");
        var context = canvas2.getContext("2d");
        var cw = canvas2.width;
        var ch = canvas2.height;
        context.clearRect(0,0,cw,ch);

        circles=[];
        index=0;
    }
);