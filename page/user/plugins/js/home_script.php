<script type="text/javascript">
const get_checksheet_info_today =()=>{
    $.ajax({
        type: "POST",
        url: "../../process/user/checksheets/c-user_p.php",
        cache:false,
        data: {
            method:"get_checksheet_info_today"
        },
        success: (response)=> {
            try {
                let response_array = JSON.parse(response);
                document.getElementById('d_inspection_date_dcrib_i').innerHTML = response_array.d_inspection_date;
				document.getElementById('d_inspection_date_ipdctm_i').innerHTML = response_array.d_inspection_date;
				document.getElementById('d_inspection_date_dirr_i').innerHTML = response_array.d_inspection_date;

				document.getElementById('shift_dcrib_i').innerHTML = response_array.shift;
				document.getElementById('shift_ipdctm_i').innerHTML = response_array.shift;
				document.getElementById('shift_dirr_i').innerHTML = response_array.shift;

				document.getElementById('a_inspector_name_dcrib_i').innerHTML = response_array.a_inspector_name;
				document.getElementById('a_inspector_name_ipdctm_i').innerHTML = response_array.a_inspector_name;
				document.getElementById('a_inspector_name_dirr_i').innerHTML = response_array.a_inspector_name;
            } catch(e) {
                console.log(response);
                Swal.fire({
                  icon: 'error',
                  title: 'Error !!!',
                  text: `Error: ${response}`,
                  showConfirmButton: false,
                  timer : 1000
                });
            }
        }
    });
}

$("#checksheets_step_1_modal").on('show.bs.modal', e => {
	get_checksheet_info_today();
});
</script>