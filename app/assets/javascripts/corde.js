$(function() {

	$(document).on('change', '.getphoto', function() {
		var file = document.querySelector('.getphoto');
		var fileList = file.files;
		if (file.files[0] == null) {
			// document.querySelector('.preview').src = "";
		} else {
			//読み込み
			var reader = new FileReader();
			reader.readAsDataURL(fileList[0]);


			//読み込み後
			reader.onload = function  () {
				$('.preview:last-child').attr('src', reader.result).css('display', 'inline-block');
				$('.image_box').append('<img src="" class="preview corde_image ui-draggable ui-draggable-handle" style="position: relative;">')
				$('input[type=file]:last').hide()
				$('.getphoto').removeClass('getphoto')
				$('<input class="getphoto" data-reference="63f1fa2d7c61e7eba5ab7a74fbeea40e" include_hidden="false" type="file" name="corde[image_id]" id="corde_image_id">').insertAfter('input[type=file]:last')
				$(".preview").draggable({
					containment: "parent"
				});
				$("input[type=file]").each(function(i, elem) {
                    $(this).attr('name', 'cordes[image_id][' + i + ']')
                });

			};
		};
	});


});
