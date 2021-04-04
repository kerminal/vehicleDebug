window.addEventListener("message", function(event) {
	const data = event.data;
	const callback = data.callback;

	if (callback != undefined) {
		const func = window[callback.type];
		if (func != undefined) {
			func(callback.data);
		}
	}
});

function post(type, data) {
	try {
		fetch(`https://${GetParentResourceName()}/${type}`, {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json; charset=UTF-8',
			},
			body: JSON.stringify(data)
		})
	} catch {}
}

function setFocus(value) {
	document.querySelector("#handling").style.display = value ? "block" : "none";
}

function updateText(data) {
	for (var x in data) {
		const val = data[x];
		const element = document.querySelector(`#${x}`);

		if (element != undefined) {
			element.innerHTML = val;
		}
	}
}

function copyText(text) {
	var element = document.querySelector("#clipboard");
	
	element.value = text;
	element.select();
	element.setSelectionRange(0, 99999);
	
	document.execCommand("copy");

	element.value = undefined;
}

function copyHandling() {
	post("copyHandling")
}

function updateHandling(key, value) {
	post("updateHandling", {
		key: key,
		value: value,
	})
}