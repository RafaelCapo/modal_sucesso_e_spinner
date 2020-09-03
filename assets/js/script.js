
$('#form1').submit(function(e){
    e.preventDefault();

    var u_name = $('#name').val();
    var u_comment = $('#comment').val();

    //console.log(u_name, u_comment);
    $.ajax({
        url: 'http://localhost/PROJS/VIDEO_AULAS/AULAS/16_Modal_Sucesso/inserir.php',
        method: 'POST',
        data: {name: u_name, comment:u_comment},
        dataType: 'json',
        beforeSend: function( xhr ) {
            $('.spinner').css('display', 'flex');
        }
    }).done(function(result){
        $('.spinner').css('display', 'none');
        $('#box_dark').css('display', 'flex');
        $('#box_modal').css('animation', 'modalShow .3s ease-out forwards');

        $('#name').val('');
        $('#comment').val('');

        $('.b_text').html('');

        if (result.status === 'sucess') {
            $('.b_text').append('<h1>Sucesso</h1><p>' + result.data + '</p>');
        } else {
            $('.b_text').append('<h1>Opss</h1><p>' + result.data + '</p>');
        }
        
        console.log(result);
        getComments();
    });
});

function getComments() {
    $.ajax({
        url: 'http://localhost/PROJS/VIDEO_AULAS/AULAS/16_Modal_Sucesso/selecionar.php',
        method: 'GET',
        dataType: 'json'
    }).done(function(result){
        console.log(result);

        $('.box_comment').html('');

        for (var i = 0; i < result.length; i++) {
            $('.box_comment').prepend('<div class="b_comm"><h4>' + result[i].name + '</h4><p>' + result[i].comment + '</p></div>');
        }
    });
}

getComments();

$("#modal_close").click(function(){
    $('#box_dark').css('display', 'none');
    $('#box_modal').css('animation', 'modalHide .1s ease-out forwards');
});