$(document).ready(function() {
    const ele = new Ele($('#body_body'), "nav");
    ele.css('100px', '100px', 'inline-block');
    ele.html('abcdef');
});

class Ele {
    constructor(parentTag, childTagId) {
        this.childTag = $('<div id="' + childTagId + '">');
        parentTag.append(this.childTag);
    }

    css(width, height, display) {
        this.childTag.css('display', display);
        this.childTag.css('width', width);
        this.childTag.css('height', height);
    }

    html(html) {
        this.childTag.html(html);
    }

    getSession(childTagId){
        childTagId.parent().append($('<% session %>'));
    }

    //idea
    //makeBorderLayout 같은거 추가해도 될듯?
}
