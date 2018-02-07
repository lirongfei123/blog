### d3.scale.linear()
var x = d3.scale.linear()
    .range([0, width - 3 * margin]);
console.log(x.ticks(100));

默认比例尺相当于数字恒等函数

比例尺有两个关键参数，一个是总长度，一个是分几格