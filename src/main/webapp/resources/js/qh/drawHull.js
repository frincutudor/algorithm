/**
 * Created by Joywalker on 5/20/17.
 */
function drawHull(jsonResponse)
{
    /**
     *  Method to draw lines between points.
     *  json = string of the algorithm response
     *  circles = array of points
     */
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

    var canvas = document.getElementById("canvas");
    var ctx = canvas.getContext("2d");
    var cw = canvas.width;
    var ch = canvas.height;

    function drawLines() {

        ctx.clearRect(0,0,cw,ch);
        ctx.strokeStyle = '#F4D871'; // props Stefan
        ctx.lineWidth = 3;
        ctx.beginPath();

        var x1,y1,x2,y2;
        for (var i = 0; i < circles.length-1; i++)
        {
            x1 = circles[i].x;
            y1 = circles[i].y;
            x2 = circles[i+1].x;
            y2 = circles[i+1].y;
            ctx.moveTo(x1,y1);
            ctx.lineTo(x2,y2);
        }
        ctx.moveTo(circles[circles.length-1].x,circles[circles.length-1].y);
        ctx.lineTo(circles[0].x,circles[0].y);
        ctx.stroke();
    }
    drawLines();
}
