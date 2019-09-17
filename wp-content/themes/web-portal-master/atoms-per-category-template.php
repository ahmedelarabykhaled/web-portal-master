<?php

/*
Template Name: Atoms Per Category 
*/

?>

<?php get_header(); ?>




  <center><h5> This image is <em><b>animated</b></em> ! Click on bundles to zoom and learn more! </h5></center>
  <svg width="1200" height="1200" style="margin:auto;display:block;margin-top:100px;margin-bottom:100px;"></svg>
  <script src="https://d3js.org/d3.v4.min.js"></script>
  <script>
  
  var svg = d3.select("svg"),
      margin = 0,
      diameter = +svg.attr("width"),
      g = svg.append("g").attr("transform", "translate(" + diameter / 2 + "," + diameter / 2 + ")");
  
  var color = d3.scaleLinear()
      .domain([0, 10])
      .range(["#F57C00", "#7a3d00"])
      .interpolate(d3.interpolateHcl);
  
  var pack = d3.pack()
      .size([diameter - margin, diameter - margin])
      .padding(2);
  
  d3.json("<?= get_field('url')?>", function(error, root) {
    if (error) throw error;
  
    root = d3.hierarchy(root)
        .sum(function(d) { return d.size; })
        .sort(function(a, b) { return b.value - a.value; });
  
    var focus = root,
        nodes = pack(root).descendants(),
        view;
  
    var circle = g.selectAll("circle")
      .data(nodes)
      .enter().append("circle")
        .attr("class", function(d) { return d.parent ? d.children ? "node" : "node node--leaf" : "node node--root"; })
        .style("fill", function(d) { return d.children ? color(5/2*d.depth) : null; })
        .on("click", function(d) { if (focus !== d) zoom(d), d3.event.stopPropagation(); });
  
    var text = g.selectAll("text")
      .data(nodes)
      .enter().append("text")
        .attr("class", "label")
        .style("fill-opacity", function(d) { return d.parent === root ? 1 : 0; })
        .style("display", function(d) { return d.parent === root ? "inline" : "none"; })
        .text(function(d) { return d.data.name; });

    var node = g.selectAll("circle,text");
  
    svg
        .style("background", d3.rgb("#ffffff"))
        .on("click", function() { zoom(root); });
  
    zoomTo([root.x, root.y, root.r * 2 + margin]);
  
    function zoom(d) {
      var focus0 = focus; focus = d;
  
      var transition = d3.transition()
          .duration(d3.event.altKey ? 7500 : 750)
          .tween("zoom", function(d) {
	    var nextView = [focus.x, focus.y, focus.r * 2 + margin];
	  //  if (view[2] > nextView[2]){ console.log("zooming");}else{console.log("unzoom");console.log("the node is: ", focus);window.open(focus.data.link);} //this opens a link provided in the json
            var i = d3.interpolateZoom(view, nextView);
            return function(t) { zoomTo(i(t));};
          });
  
      transition.selectAll("text")
        .filter(function(d) { return d.parent === focus || this.style.display === "inline"; })
          .style("fill-opacity", function(d) { return d.parent === focus ? 1 : 0; })
          .on("start", function(d) { if (d.parent === focus) this.style.display = "inline"; })
          .on("end", function(d) { if (d.parent !== focus) this.style.display = "none"; });
    }
  
    function zoomTo(v) {
      var k = diameter / v[2]; view = v;
      node.attr("transform", function(d) { return "translate(" + (d.x - v[0]) * k + "," + (d.y - v[1]) * k + ")"; });
      circle.attr("r", function(d) { return d.r * k; });
    }
  });
  
  </script>
  <!-- Return to Top -->
  <a href="#0" class="cd-top">Top</a>




<?php get_footer(); ?>