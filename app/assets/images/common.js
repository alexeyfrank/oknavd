var currentDate = new Date();

jQuery(document).ready(function ()
{
	var loc = new String(location.pathname);
	jQuery("#writeResponse form").submit(function()
			{
				var fio = jQuery(this).find("input[name=clientName]").val(),
					orderName = jQuery(this).find("input[name=orderName]").val(),
					orderDate = jQuery(this).find("input[name=orderDate]").val();
				if (fio == '' || orderName == '' || orderDate == '')
				{
					alert('Обязательными для заполнения являются ФИО, Номер и дата договора');
					return false;
				}
			});
	$("#topmenu-block .item a").each(function()
	{
		var href = $(this).attr('href');
		if (href!='/' && !loc.indexOf(href))
		{
			selector = "a[href*="+href+"]";
			$("ul.topmenu li").has(selector).prepend("<div class='topmenu-item-rounder l'></div>")
				.prepend("<div class='topmenu-item-rounder r'></div>")
				.prepend("<div class='topmenu-item-bg'></div>")
				.find(selector).css({'color':'white','text-decoration':'none'});
		}
	});
	$("a[rel*=fbox]").fancybox({cyclic:true});
	$(".submenu a[href="+location.pathname+"]").addClass('bolder');
	jQuery.datepicker.regional['ru'] =
	{
		closeText:'Закрыть',
		prevText:'&#x3c;Пред',
		nextText:'След&#x3e;',
		currentText:'Сегодня',
		monthNames:['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
		monthNamesShort:['Янв','Фев','Мар','Апр','Май','Июнь','Июль','Авг','Сен','Окт','Ноя','Дек'],
		dayNames:['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
		dayNamesShort:['вск','пнд','втр','срд','чтв','птн','сбт'],
		dayNamesMin:['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
		dateFormat:'dd.mm.yy',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		changeMonth:true,
		changeYear:true,
		yearRange:'2008:'+(currentDate.getFullYear()+1),
		yearSuffix:''
	};
	jQuery.datepicker.setDefaults(jQuery.datepicker.regional['ru']);
	jQuery(".jq-datepicker").click(function(){ jQuery(this).datepicker(); });
	$(".jq-dialog").click(function()
	{
		var t = $(this).attr('title'),dlg = $(this).attr('href').replace('?','#'),w = $(this).attr('w'),
		dialogOptions =
		{
			modal:true,
			show:'fade',
			hide:'fade',
			resizable:false,
			draggable:false,
			width:w?w:400,
			title:t
		};
		$(dlg).dialog(dialogOptions);
		return false;
	});
});

function setCookie (name, value, expires, path, domain, secure)
{
    document.cookie = name + "=" + escape(value) +
      ((expires) ? "; expires=" + expires : "") +
      ((path) ? "; path=" + path : "") +
      ((domain) ? "; domain=" + domain : "") +
      ((secure) ? "; secure" : "");
}