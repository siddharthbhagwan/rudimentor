'use strict'

$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	$('.mod_metrics').on('click', function(){
			var val, id, action, data;
			action = $(this).attr('id');
			val = $(this).closest('td').prev('td').text();
			id = $(this).closest('tr').attr('id');

			switch(action){
				case 'modify_ab_plus': data = { ability_bpm : ++val };
															 editBatch_Ajax(id, data);
															 break;
				case 'modify_ab_minus': data = { ability_bpm : --val };
															  editBatch_Ajax(id, data);
															  break;
				case 'modify_end_plus': data = { endurance_bpm : ++val };
															 	editBatch_Ajax(id, data);
															  break;
				case 'modify_end_minus': data = { endurance_bpm : --val };
															   editBatch_Ajax(id, data);
															   break;
			}
	});
});

function editBatch_Ajax(id, batch_data){
	$.ajax({
	  url: '/batches/'+ id,
	  type: 'put',
	  context: 'this',
	  dataType: 'json',
	  data: {
	  	batch: batch_data,
	  	id: id
	  },
	  success: function(msg){ 
	  	$('#' + id + ' .' + Object.keys(batch_data)[0]).text(batch_data[Object.keys(batch_data)[0]]);
	  },
	  error: function(jqXHR, textStatus, errorThrown) {}
	});
}