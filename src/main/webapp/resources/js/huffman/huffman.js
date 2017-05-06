
function canvasDraw(jsonData) {
   // var json={"nr":"11","freq":17,"chValue":"#","left":{"freq":7,"chValue":"#","left":{"freq":3,"chValue":"#","left":{"freq":1,"chValue":"M"},"right":{"freq":2,"chValue":"p"}},"right":{"freq":4,"chValue":"#","left":{"freq":2,"chValue":"a"},"right":{"freq":2,"chValue":"d"}}},"right":{"freq":10,"chValue":"#","left":{"freq":4,"chValue":"i"},"right":{"freq":6,"chValue":"s"}}};



    var canvas = document.getElementById("canvas");
    var ctx = canvas.getContext("2d");
    var $canvas = $("#canvas");
    var canvasOffset = $canvas.offset();
    var offsetX = canvasOffset.left;
    var offsetY = canvasOffset.top;
    var scrollX = $canvas.scrollLeft();
    var scrollY = $canvas.scrollTop();
    var canvasWidth = canvas.width;
    var canvasHeight = canvas.height;
    var stdRadius = 15;
    var startingPositionX = canvasWidth / 2;
    var startingPositionY = stdRadius;
    var index = 1;
    var circles = [];
    var p = [];
    var PI2 = Math.PI * 2;
    var currentNode = json;
    var json=jsonData;

    createCircles(json.nr);
    drawAll();
    drawLines();
    fillWithText();

    function createCircles(cnt) {
        circles = [];
        var x = startingPositionX;
        var y = startingPositionY;
        var r = stdRadius;
        var color = 'green';
        circles.push({x: x, y: y, radius: r, color: color, parent: "0", freq: json.freq, char: "", position: "root",index:0});

        checkRoot();
        preOrderTraversal(json,0);


    }

    console.log(circles);




//test for other conditions : no left after root

    function checkRoot() {
        if (!json.left) {
            startingPositionY += 60;
        }
    }



    function preOrderTraversal(root,parent) {



        if (root.left) {
            startingPositionX = startingPositionX - 60;
            startingPositionY = startingPositionY + 60;
            var char = "";
            if (root.left.chValue != "#") {
                char = root.left.chValue;
            }

            var circle={
                x: startingPositionX,
                y: startingPositionY,
                radius: stdRadius,
                color: 'green',
                parent: parent,
                freq: root.left.freq,
                char: char,
                position: "left"

            };
            if(!circle.hasOwnProperty('index'))
            {
                circle.index=index;
                index++;
            }
            circles.push(circle);
            parentNode=circle.index;
            preOrderTraversal(root.left,circle.index);

            startingPositionX = startingPositionX + 60;

            drawAll();

        }

        if (root.right) {
            startingPositionX = startingPositionX + 60;
            var char = "";
            if (root.right.chValue != "#") {
                char = root.right.chValue;
            }
            var circle={
                x: startingPositionX,
                y: startingPositionY,
                radius: stdRadius,
                color: 'green',
                parent: parent,
                freq: root.right.freq,
                char: char,
                position: "right"
            };
            if(!circle.hasOwnProperty('index'))
            {
                circle.index=index;
                index++;
            }
            circles.push(circle);

            preOrderTraversal(root.right,circle.index);
            startingPositionX = startingPositionX - 60;
            startingPositionY = startingPositionY - 60;

            drawAll();


        }
    }


    function fillWithText() {

        var cnt = circles.length;
        for (var i = 0; i < cnt; i++) {

            ctx.fillStyle = 'red';
            ctx.font = "20px Georgia";
            var char = "";
            if (circles[i].char != "") {
                char = circles[i].char;
            }
            ctx.fillText(char, circles[i].x, circles[i].y);


        }


    }

    function drawAll() {
        ctx.clearRect(0, 0, canvasWidth, canvasHeight);

        for (var i = 0; i < circles.length; i++) {
            var circle = circles[i];

            ctx.beginPath();
            ctx.arc(circle.x, circle.y, circle.radius, 0, PI2);
            ctx.closePath();
            ctx.fillStyle = 'green';
            ctx.fill();

        }

    }


    function drawLines() {
        var cnt = circles.length;
        ctx.strokeStyle = '#000';
        ctx.lineWidth = 2;
        ctx.beginPath();
        console.log(cnt);
        for (var i = 1; i < cnt; i++) {
            for (var j = 0; j < cnt; j++)
                if (circles[i].parent == j) {
                    ctx.moveTo(circles[i].x, circles[i].y);
                    ctx.lineTo(circles[j].x, circles[j].y);
                    if (circles[i].position == "left") {
                        var p1 = {x: circles[i].x, y: circles[i].y};
                        var p2 = {x: circles[j].x, y: circles[j].y};
                        drawLabel(ctx, "0", p1, p2, 'center', 0);
                    }
                    else {
                        var p1 = {x: circles[i].x, y: circles[i].y};
                        var p2 = {x: circles[j].x, y: circles[j].y};
                        drawLabel(ctx, "1", p1, p2, 'center', 0);
                    }

                }

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


}

