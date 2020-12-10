1. 가입버튼을 누를때 result.html로 이동.
    - form action = 'result.html'
    - input tyle='submit'

2. 반드시 입력해야하는 것? : required\
3. 라벨을 클릭하면 아이디가 클릭되는 것 - <label for = 'user_id'> <input type ='text' id='user_id' />
4. 취소 <input type='reset' value = '취소' />
5. 정규식 (첫글자 대문자)
   1. ^[A-Z][A-Za-z0-9]{5, 0} (0 이 이상이라는 뜻)
   2. /^[A-Z][A-Za-z0-9]{5.0}/
6. $('#user_id').blur(function(){})
7. if ( req.test($(this).val()){ alert('ERROR')});

8. 
$('#user_id').val('');
form.userid.value = '';
document.getElementById('user_id').value = '';


9. $('#pass_find').on('keyup', function(){
    if($('#pass').val()== '') {
        alert('암호확인');
        $('#pass').focus();
        $('#pass').val('');
    }
});

if($('#pass').val() == $('#pass_chk').val()){
    $('#span').html('ok');
    $('#span').css({'color' : 'green' , 'font-weight' : 'bolder'})
}else{
    $('#span').html('Fail');
    $('#span').css({'color' : 'red' , 'font-weight' : 'bolder'})
}

10. if( !$('.gen1:checked')) || !$('.gen2:checked')){fail ...}
    
    let flag = true;
    let ra = document.frm.gen;
    if(!ra[0].checked || ra[1].checked){
        fail
    } 