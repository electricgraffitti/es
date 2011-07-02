/*jslint white: false, onevar: false, browser: true, devel: true, undef: true, nomen: true, laxbreak: true, eqeqeq: true, plusplus: true, bitwise: true, regexp: true, strict: false, newcap: true, immed: true, laxbreak: true */
/*global jQuery, $, Raphael */

var admin = {
	
	dataTables: function() {
		$('#dashboard_blogs_table').dataTable({
			"bJQueryUI": true,
			"sPaginationType": "full_numbers"
		});
		
	}
};

//**********Initialize Document**********//
$(document).ready(function() {
	admin.dataTables();
});