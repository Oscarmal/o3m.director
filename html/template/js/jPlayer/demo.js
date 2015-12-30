$(document).ready(function(){

  var myPlaylist = new jPlayerPlaylist({
    jPlayer: "#jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
  }, [
    {
      title:"Vendrá mi Jesús",
      artist:"Palabra Miel Santiago Atitlan, Gtm",
      mp3: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Santiago-Atitlan_Su-Nombre-Guerrero-Es-Jehová_10-Vendra-Mi-Jesus.mp3",
      // oga: ".ogg",
      poster: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Santiago-Atitlan_Su-Nombre-Guerrero-Es-Jehová.jpg"
    }
    ,{
      title:"A su Majestad",
      artist:"Palabra Miel Washington, USA",
      mp3: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Washington_A-su-Majestad_08-A-su-Majestad.mp3",
      // oga: ".ogg",
      poster: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Washington_A-su-Majestad.jpg"
    }
    ,{
      title:"Su nombre guerrero es Jehová",
      artist:"Palabra Miel Santiago Atitlan, Gtm",
      mp3: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Santiago-Atitlan_Su-Nombre-Guerrero-Es-Jehová_11-Su-Nombre-Guerrero-Es-Jehová.mp3",
      // oga: ".ogg",
      poster: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Santiago-Atitlan_Su-Nombre-Guerrero-Es-Jehová.jpg"
    }
    ,{
      title:"Jehovah Is the Name of the Lord",
      artist:"Palabra Miel Reno Nevada, USA - Alabastro",
      mp3: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Reno-Nevada_Great-Is-My-God_05-Jehovah-Is-the-Name-of-the-Lord.mp3",
      // oga: ".ogg",
      poster: "http://localhost/iglesia/o3m.director/files/music/Palabra-Miel-Reno-Nevada_Great-Is-My-God.jpg"
    }
  ], {
    playlistOptions: {
      enableRemoveControls: true,
      autoPlay: false
    },
    swfPath: "js/jPlayer",
    supplied: "webmv, ogv, m4v, oga, mp3",
    smoothPlayBar: true,
    keyEnabled: true,
    audioFullScreen: false
  });
  
  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').removeClass('animate');
    $('.jp-play-me').removeClass('active');
    $('.jp-play-me').parent('li').removeClass('active');
  });

  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').addClass('animate');
  });

  $(document).on('click', '.jp-play-me', function(e){
    e && e.preventDefault();
    var $this = $(e.target);
    if (!$this.is('a')) $this = $this.closest('a');

    $('.jp-play-me').not($this).removeClass('active');
    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

    $this.toggleClass('active');
    $this.parent('li').toggleClass('active');
    if( !$this.hasClass('active') ){
      myPlaylist.pause();
    }else{
      var i = Math.floor(Math.random() * (1 + 7 - 1));
      myPlaylist.play(i);
    }
    
  });



  // video

  $("#jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        title: "Big Buck Bunny",
        m4v: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.m4v",
        ogv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.ogv",
        webmv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.webm",
        poster: "images/m41.jpg"
      });
    },
    swfPath: "js",
    supplied: "webmv, ogv, m4v",
    size: {
      width: "100%",
      height: "auto",
      cssClass: "jp-video-360p"
    },
    globalVolume: true,
    smoothPlayBar: true,
    keyEnabled: true
  });

});