$(document).on('turbolinks:load', function() {

    $('.text').each(function() {
        $(this).html($(this).text().replace(/\b(\w+)\b/g, "<span>$1</span>"));
    });


    $('.text span').on("click", function() {
        var currentWord = getWord($(this).html())

        $(this).toggleClass('highlight');
        if ($(this).hasClass("highlight")) {
            $('#word_value').append(currentWord + " ")
            $("#unknown-words").append("<li>" + getWord($(this).html()) + "</li>");

        } else {
            $('li:contains(' + currentWord + ')').not('.highlight').remove();
            $('#word_value').text($('#word_value').text().replace(currentWord, ''))
        }
    })

    function getWord(word) {
        return word;
    }
});
