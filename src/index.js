const Elm = require('./Main.elm');

function bindToDom(id) {
    const node = document.getElementById(id);
    return Elm.Main.embed(node);
}
window.doProcess = {
  bindToDom: bindToDom
}
