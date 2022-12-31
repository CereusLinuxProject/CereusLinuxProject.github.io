function includeHTML() {
    const z = document.getElementsByTagName("*");
    for (let i = 0; i < z.length; i++) {
      const elmnt = z[i];
      const file = elmnt.getAttribute("inc");
      if (file) {
        const xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4) {
            if (this.status == 200) { elmnt.innerHTML = this.responseText; }
            elmnt.removeAttribute("inc");
          }}      
        xhttp.open("GET", file, true);
        xhttp.send();
        return;
      }
    }
};