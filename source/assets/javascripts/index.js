var deleteLog = false;
$(document).ready(function() {
    is_weixn=function(){
        var ua = navigator.userAgent.toLowerCase();
        if(ua.match(/MicroMessenger/i)=="micromessenger") {
            return true;
        } else {
            return false;
        }
    }

    downLoadCe365=function() {
      if (is_weixn()){
        alert("友情提示：‘微信’，请按照下面提示下载！");
      }else{
        var ua = navigator.userAgent;
        var src = "https://growcn.com/jdi/api/app/download?package_name=com.growcn.ce365";//apple version
        if (!(/iphone|ipod|ipad/gi.test(ua))) {
            //src = "";
        }else{
            //src = "";
        }
        window.location.href = src;
      }
    }

    $('#pagepiling').pagepiling({
        menu: '#menu',
        anchors: ['page1', 'page2', 'download'],
        sectionsColor: ['#f5e6e6', '#f5e6e6', '#f5e6e6', '#f5e6e6'],
        onLeave: function(index, nextIndex, direction){
          if(deleteLog){
            $('#callbacksDiv').html('');
          }
          //$('#callbacksDiv').append('<p>onLeave - index:' + index + ' nextIndex:' + nextIndex + ' direction:' + direction + '</p>')
        },
        afterRender: function(){
          //$('#callbacksDiv').append('<p>afterRender</p>');
        },
        afterLoad: function(anchorLink, index){
          //$('#callbacksDiv').append('<p>afterLoad - anchorLink:' + anchorLink + " index:" + index + '</p>');

          //section 2
        if(index == 2){
          //moving the image
          $('#section2').find('.intro').delay(100).animate({
            left: '0%'
          }, 1500, 'easeOutExpo', function(){
            $('#section2').find('p').first().fadeIn(700, function(){
              $('#section2').find('p').last().fadeIn(600);
            });
          });


        }

        //section 3
        if(anchorLink == 'download'){
          //section 3
          $('#section3').find('.intro').delay(100).animate({
              left: '0%'
          }, 1500, 'easeOutExpo');
        }

        deleteLog = true;
        }
    });
});