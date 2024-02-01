<script type="text/javascript">
$( document ).ready(function() {
     load_accounts();
});		

const load_accounts =()=>{
    $.ajax({
        url:'../../process/admin/accounts/acct-management_p.php',
        type:'POST',
        cache:false,
        data:{
            method:'account_list'
        },success:function(response){
            $('#list_of_accounts').html(response);
            $('#spinner').fadeOut();
        }
    });
}

const search_accounts =()=>{
   var id_number = document.getElementById('id_number_search').value;
   var full_name = document.getElementById('full_name_search').value;
   var user_type = document.getElementById('user_type_search').value;
    $.ajax({
        url:'../../process/admin/accounts/acct-management_p.php',
        type:'POST',
        cache:false,
        data:{
            method:'search_account_list',
            id_number:id_number,
            full_name:full_name,
            user_type:user_type
        },success:function(response){
            $('#list_of_accounts').html(response);
            $('#spinner').fadeOut();
        }
    });
}

const register_accounts =()=>{
var id_number = document.getElementById('id_number').value;
var full_name = document.getElementById('full_name').value;
var username = document.getElementById('username').value;
var password = document.getElementById('password').value;
var line_no = document.getElementById('line_no').value;
var user_type = document.getElementById('user_type').value;
if (id_number == '') {
    Swal.fire({
        icon: 'info',
        title: 'Please Input Employee No !!!',
        text: 'Information',
        showConfirmButton: false,
        timer : 1000
    }); 
}else if(full_name == ''){
    Swal.fire({
        icon: 'info',
        title: 'Please Input Full Name !!!',
        text: 'Information',
        showConfirmButton: false,
        timer : 1000
    }); 
}else if(username == ''){
    Swal.fire({
        icon: 'info',
        title: 'Please Input Username !!!',
        text: 'Information',
        showConfirmButton: false,
        timer : 1000
    });  
}else if(password == ''){
    Swal.fire({
        icon: 'info',
        title: 'Please Input Password !!!',
        text: 'Information',
        showConfirmButton: false,
        timer : 1000
    });  
}else if(line_no == ''){
    Swal.fire({
        icon: 'info',
        title: 'Please Input Line No. !!!',
        text: 'Information',
        showConfirmButton: false,
        timer : 1000
    });    
}else if(user_type == ''){
    Swal.fire({
        icon: 'info',
        title: 'Please Select User Type !!!',
        text: 'Information',
        showConfirmButton: false,
        timer : 1000
    });  
}else{
	$.ajax({
        url:'../../process/admin/accounts/acct-management_p.php',
        type:'POST',
        cache:false,
        data:{
            method:'register_account',
            id_number:id_number,
            full_name:full_name,
            username:username,
            password:password,
            line_no:line_no,
            user_type:user_type
        },success:function(response){
            if (response == 'success') {
                    Swal.fire({
                      icon: 'success',
                      title: 'Succesfully Recorded!!!',
                      text: 'Success',
                      showConfirmButton: false,
                      timer : 1000
                    });
                    $('#id_number').val('');
                    $('#full_name').val('');
                    $('#username').val('');
                    $('#password').val('');
                    $('#line_no').val('');
                    $('#user_type').val('');
					load_accounts();
					$('#new_account').modal('hide');
            }else if(response == 'Already Exist'){
                     Swal.fire({
                      icon: 'info',
                      title: 'Duplicate Data !!!',
                      text: 'Information',
                      showConfirmButton: false,
                      timer : 1000
                    });
            }else{
                    Swal.fire({
                      icon: 'error',
                      title: 'Error !!!',
                      text: 'Error',
                      showConfirmButton: false,
                      timer : 1000
                    });      
            }
        }
    });
    }
}

const get_accounts_details =(param)=>{
 var string = param.split('~!~');
    var id = string[0];
    var id_number = string[1];
    var username = string[2];
    var full_name = string[3];
    var line_no = string[4];
    var role = string[5];

	document.getElementById('id_account_update').value = id;
    document.getElementById('id_number_update').value = id_number;
	document.getElementById('username_update').value = username;
	document.getElementById('full_name_update').value = full_name;
    document.getElementById('line_no_update').value = line_no;
	document.getElementById('user_type_update').value = role;
}

const update_account =()=>{
 var id = document.getElementById('id_account_update').value;
 var id_number = document.getElementById('id_number_update').value;
 var username = document.getElementById('username_update').value;
 var full_name = document.getElementById('full_name_update').value;
 var password = document.getElementById('password_update').value;
 var line_no = document.getElementById('line_no_update').value;
 var role = document.getElementById('user_type_update').value;

$.ajax({
        url:'../../process/admin/accounts/acct-management_p.php',
        type:'POST',
        cache:false,
        data:{
            method:'update_account',
            id:id,
            id_number:id_number,
            username:username,
            full_name:full_name,
            password:password,
            line_no:line_no,
            role:role
        },success:function(response){
            if (response == 'success') {
                    Swal.fire({
                      icon: 'success',
                      title: 'Succesfully Recorded!!!',
                      text: 'Success',
                      showConfirmButton: false,
                      timer : 1000
                    });
                    $('#id_number').val('');
                    $('#full_name').val('');
                    $('#username').val('');
                    $('#password').val('');
                    $('#line_no').val('');
                    $('#user_type').val('');
					load_accounts();
					$('#update_account').modal('hide');
            }else if(response == 'duplicate'){
                     Swal.fire({
                      icon: 'info',
                      title: 'Duplicate Data !!!',
                      text: 'Information',
                      showConfirmButton: false,
                      timer : 1000
                    });
            }else{
                    Swal.fire({
                      icon: 'error',
                      title: 'Error !!!',
                      text: 'Error',
                      showConfirmButton: false,
                      timer : 1000
                    });
            }
        }
    });
}

const delete_account =()=>{
	var id = document.getElementById('id_account_update').value;
	$.ajax({
        url:'../../process/admin/accounts/acct-management_p.php',
        type:'POST',
        cache:false,
        data:{
            method:'delete_account',
            id:id
        },success:function(response){
            if (response == 'success') {
                    Swal.fire({
                      icon: 'info',
                      title: 'Succesfully Deleted !!!',
                      text: 'Information',
                      showConfirmButton: false,
                      timer : 1000
                    });
                    load_accounts();
                    $('#update_account').modal('hide');
            }else{
                    Swal.fire({
                      icon: 'error',
                      title: 'Error !!!',
                      text: 'Error',
                      showConfirmButton: false,
                      timer : 1000
                    });  
            }
        }
    });
}

const export_accounts = () => {
  var id_number = document.getElementById('id_number_search').value;
  var full_name = document.getElementById('full_name_search').value;
  window.open('../../process/export/exp_accounts.php?id_number='+id_number+"&full_name="+full_name,'_blank');
}
</script>