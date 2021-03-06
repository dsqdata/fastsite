// Theme color settings
var store = function (name, val) {
    if (typeof (Storage) !== "undefined") {
        localStorage.setItem(name, val);
    } else {
        window.alert('Please use a modern browser to properly view this template!');
    }
}

$(document).ready(function () {

    $("*[data-theme]").click(function (e) {
        e.preventDefault();
        var currentStyle = $(this).attr('data-theme');
        store('theme', currentStyle);
        $('#theme').attr({
            href: ctxStatic + '/bootstrap/3.0.3/plugin/css/colors/' + currentStyle + '.css'
        })
    });

    var currentTheme = get('theme');
    if (currentTheme) {
        $('#theme').attr({
            href: ctxStatic + '/bootstrap/3.0.3/plugin/css/colors/' + currentTheme + '.css'
        });
    }
    // color selector
    $('#themecolors').on('click', 'a', function () {
        $('#themecolors li a').removeClass('working');
        $(this).addClass('working')
    });

});

function get (name) {
    return localStorage.getItem(name);
}

$(document).ready(function () {
    $("*[data-theme]").click(function (e) {
        e.preventDefault();
        var currentStyle = $(this).attr('data-theme');
        store('theme', currentStyle);
        $('#theme').attr({
            href: ctxStatic + '/bootstrap/3.0.3/plugin/css/colors/' + currentStyle + '.css'
        })
    });

    var currentTheme = get('theme');
    if (currentTheme) {
        $('#theme').attr({
            href: ctxStatic + '/bootstrap/3.0.3/plugin/css/colors/' + currentTheme + '.css'
        });
    }
    // color selector
    $('#themecolors').on('click', 'a', function () {
        $('#themecolors li a').removeClass('working');
        $(this).addClass('working')
    });
});
