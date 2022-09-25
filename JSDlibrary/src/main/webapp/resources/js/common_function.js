function sendPost(url, params) {
    var form = document.createElement('form');
    form.setAttribute('method', 'post');
    //form.setAttribute('target', '_slef');
    form.setAttribute('action', url);
    document.charset = "UTF-8";

    for (var key in params) {
      var hiddenField = document.createElement('input');
      hiddenField.setAttribute('type', 'hidden');
      hiddenField.setAttribute('name', key);
      hiddenField.setAttribute('value', params[key]);
      form.appendChild(hiddenField);
      
      console.log(hiddenField);
    }

	document.body.appendChild(form);
	form.submit();
}
