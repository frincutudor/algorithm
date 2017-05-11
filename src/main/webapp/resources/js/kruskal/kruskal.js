

function canvasDraw(jsonData,nrNodes)
{
    /**
     * @author Frincu Tudor
     * @type {Object} canvas - The drawing area
     * @type {Object} ctx - Canvas 2d context
     * @type {Object} canvasOffset - canvas offset values
     * @type {Number} offsetX - canvas x offset
     * @type {Number} offsetY - canvas y offset
     * @type {Number} cw - canvas width
     * @type {Number} ch - canvas height
     */

    var canvas = document.getElementById("canvas");
    var ctx = canvas.getContext("2d");
    var $canvas = $("#canvas");
    var canvasOffset = $canvas.offset();
    var offsetX = canvasOffset.left;
    var offsetY = canvasOffset.top;
    var scrollX = $canvas.scrollLeft();
    var scrollY = $canvas.scrollTop();
    var cw = canvas.width;
    var ch = canvas.height;

    /**
     * @type {Boolean} isDown - indicates a element movement
     * @type {Number} lastX - indicates the last position of x that has been processed
     * @type {Number} lastY - indicates the last position of y that has been processed
     * @type {Number} PI2 - the radian value of a full circle

     * @type {Object} cricles[] - the array where circles are stored
     *                @property {Number} x - x coordonate.
     *                @property {Number} y - y coordonate.
     *                @property {Number} radius - the radius of the circle.
     *                @property {String} color - the color of the circle.
     *
     * @type {Number} stdRadius - circles defaulr radius
     * @type {Number} draggingCircle - indicates if a circle is dragged.
     *
     * @type {Object} JSON - the array where the JSON is stored
     *                @property {Number} nr - number of nodes.
     *                @property {Number} nr elements where for each number the are the index of the nodes which are used to draw lines
     *
     */

    var isDown = false;
    var lastX;
    var lastY;
    var PI2 = Math.PI * 2;
    var circles = [];
    var stdRadius = 10;
    var draggingCircle = -1;
    var nrCircles=nrNodes;
    var JSON=jsonData;


    /*TODO: finish documentation of functions*/


    function createCircles() {
        circles = [];

        //circles.push({});//fill f
        for (var i=1; i<=nrCircles; i++) {
            var x = 5+ Math.random() *300;
            var y = 5+ Math.random() *300;
            var r = stdRadius;
            var color = 'green'
            circles.push({x:x,y:y,radius:r,color:color});
        }

    }



    function drawLines() {


        ctx.strokeStyle = '#000';
        ctx.lineWidth = 2;
        ctx.beginPath();


        for (var i = 0; i < JSON.length; i++)
        {

            var x1=circles[JSON[i].source].x;
            var y1=circles[JSON[i].source].y;
            var x2=circles[JSON[i].destination].x;
            var y2=circles[JSON[i].destination].y;

            ctx.moveTo(x1,y1);
            ctx.lineTo(x2,y2);
            drawLabel(ctx,JSON[i].cost,{x:x1,y:y1},{x:x2,y:y2},'center');

        }
        ctx.stroke();


    }

    function drawLabel(ctx, text, p1, p2, alignment, padding) {
        if (!alignment) alignment = 'center';
        if (!padding) padding = 0;

        var dx = p2.x - p1.x;
        var dy = p2.y - p1.y;
        var p, pad;
        if (alignment == 'center') {
            p = p1;
            pad = 1 / 2;
        } else {
            var left = alignment == 'left';
            p = left ? p1 : p2;
            pad = padding / Math.sqrt(dx * dx + dy * dy) * (left ? 1 : -1);
        }

        ctx.save();
        ctx.textAlign = alignment;
        ctx.translate(p.x + dx * pad, p.y + dy * pad);
        ctx.rotate(Math.atan2(dy, dx));
        ctx.fillText(text, 0, 0);
        ctx.restore();
    }


    function fillWithText()
    {

        var cnt= circles.length;
        for (var i=0; i<cnt; i++) {

            ctx.fillStyle = '#999';
            ctx.font = "40px Georgia";
            ctx.fillText(i, circles[i].x, circles[i].y);


        }


    }

    createCircles();

    drawAll();
    drawLines();


    fillWithText();
// clear the canvas and redraw all existing circles
    function drawAll() {
        ctx.clearRect(0, 0, cw, ch);

        for (var i = 0; i < circles.length; i++) {
            var circle = circles[i];

            ctx.beginPath();
            ctx.arc(circle.x, circle.y, circle.radius, 0, PI2);
            ctx.closePath();
            ctx.fillStyle = 'green';
            ctx.fill();

        }

    }

    function handleMouseDown(e) {
        // tell the browser we'll handle this event
        e.preventDefault();
        e.stopPropagation();

        // save the mouse position
        // in case this becomes a drag operation
        lastX = parseInt(e.clientX - offsetX);
        lastY = parseInt(e.clientY - offsetY);

        // hit test all existing circles
        var hit = -1;
        for (var i = 0; i < circles.length; i++) {
            var circle = circles[i];
            var dx = lastX - circle.x;
            var dy = lastY - circle.y;
            if (dx * dx + dy * dy < circle.radius * circle.radius) {
                hit = i;
            }
        }

        // if no hits then add a circle
        // if hit then set the isDown flag to start a drag

        draggingCircle = circles[hit];
        isDown = true;


    }

    function handleMouseUp(e) {
        // tell the browser we'll handle this event
        e.preventDefault();
        e.stopPropagation();

        // stop the drag
        isDown = false;
    }

    function handleMouseMove(e) {

        // if we're not dragging, just exit
        if (!isDown) {
            return;
        }

        // tell the browser we'll handle this event
        e.preventDefault();
        e.stopPropagation();

        // get the current mouse position
        mouseX = parseInt(e.clientX - offsetX);
        mouseY = parseInt(e.clientY - offsetY);

        // calculate how far the mouse has moved
        // since the last mousemove event was processed
        var dx = mouseX - lastX;
        var dy = mouseY - lastY;

        // reset the lastX/Y to the current mouse position
        lastX = mouseX;
        lastY = mouseY;

        // change the target circles position by the
        // distance the mouse has moved since the last
        // mousemove event
        draggingCircle.x += dx;
        draggingCircle.y += dy;

        // redraw all the circles
        drawAll();
        drawLines();
        fillWithText();
    }



// listen for mouse events
    $("#canvas").mousedown(function (e) {
        handleMouseDown(e);
    });
    $("#canvas").mousemove(function (e) {
        handleMouseMove(e);
    });
    $("#canvas").mouseup(function (e) {
        handleMouseUp(e);
    });
    $("#canvas").mouseout(function (e) {
        handleMouseUp(e);
    });

//////////////////////
// Utility functions

    function randomColor() {
        return ('#' + Math.floor(Math.random() * 16777215).toString(16));
    }
}