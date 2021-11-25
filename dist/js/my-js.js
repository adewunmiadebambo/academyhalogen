var audio;
var play_list;
var tracks;
var current;

init();
function init(){
    current = 0;
    audio = $('#audio');
    play_list = $('#play_list');
    tracks = play_list.find('li a');
    len = tracks.length - 1;
    audio[0].volume = .10;
    audio[0].play();
    play_list.find('a').click(function(e){
        e.preventDefault();
        link = $(this);
        current = link.parent().index();
        run(link, audio[0]);
    });
    audio[0].addEventListener('ended',function(e){
        current++;
        if(current == len){
            current = 0;
            link = play_list.find('a')[0];
        }else{
            link = play_list.find('a')[current];    
        }
        run($(link),audio[0]);
    });
}
function run(link, player){
        player.src = link.attr('href');
        par = link.parent();
        par.addClass('active').siblings().removeClass('active');
        audio[0].load();
        audio[0].play();
}