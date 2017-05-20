/**
 * Created by Joywalker on 5/20/17.
 */
function drawHull(jsonResponse)
{
    var json=jsonResponse
    var string =json.response.slice(1,-1).split(",");
    var circles=[];
    var coords=string[0].split(" ");
    circles.push({x:coords[0],y:coords[1]});
    for(var i=1;i<string.length;i++)
    {
        if(string[i][0]==" ")
        {
            string[i].slice(1);
        }
        var coords=string[i].split(" ");
        circles.push({x:coords[1],y:coords[2]});
    }

    var canvas = document.getElementById("outputCanvas");
    var ctx = canvas.getContext("2d");
    var cw = canvas.width;
    var ch = canvas.height;

    function drawLines() {

        ctx.clearRect(0,0,cw,ch);
        ctx.strokeStyle = '#00d';
        ctx.lineWidth = 2;
        ctx.beginPath();


        for (var i = 0; i < circles.length-1; i++)
        {
            var x1 = circles[i].x;
            var y1 = circles[i].y;
            var x2 = circles[i+1].x;
            var y2 = circles[i+1].y;
            ctx.moveTo(x1,y1);
            ctx.lineTo(x2,y2);

        }
        ctx.stroke();
    }
    drawLines();
}
