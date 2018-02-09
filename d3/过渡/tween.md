补间函数是用来内部实现attr和style补间，并可以用来对其它文档内容进行内插。例如，内插从0到100的文本内容：

selection.transition().tween("text", function() {
    var i = d3.interpolateRound(0, 100);
    return function(t) {
        this.textContent = i(t);
    };
});