### d3.scale.linear()
var x = d3.scale.linear()
    .range([0, width - 3 * margin]);
console.log(x.ticks(100));

默认比例尺相当于数字恒等函数