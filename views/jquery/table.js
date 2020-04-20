function draw_table() //Those codes are taken and recoded from gitHub. Codes are of the properties of Mikhail Timofeev CCT Web Professor.-->
{
	$("#results").empty();
	$.getJSONuncached = function (url)
	{
		return $.ajax(
		{
			url: url,
			type: 'GET',
			cache: false,
			success: function (html)
			{
				$("#results").append(html);
				select_row();
			}
		});
	};
	$.getJSONuncached("/get/html")
};

function select_row()
{
	$("#automobile tbody tr[id]").click(function ()
	{
		$(".selected").removeClass("selected");
		$(this).addClass("selected");
		var type = $(this).prevAll("tr").children("td[colspan='4']").length - 1;
		var car = $(this).attr("id") - 1;
		delete_row(type, car);
	})
};

function delete_row(t, c)
{
	$("#delete").click(function ()
	{
		$.ajax(
		{
			url: "/post/delete",
			type: "POST",
			data:
			{
				type: t,
				car: c
			},
			cache: false,
			success: setTimeout(draw_table, 1000)
		})
	})
};

$(document).ready(function ()
{
	draw_table();
});


//Those codes are taken and recoded from gitHub. Codes are of the properties of Mikhail Timofeev CCT Web Professor.-->