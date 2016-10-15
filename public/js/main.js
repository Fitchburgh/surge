console.log('hi mom');

// search bar requests

function movieSearch(searchString) {
    var searchbar = $("#userInput").val("");
    $.ajax({
        "method": "GET",
        // "url": "/api/get_movies/" + encodeURIComponent(searchString),
        "url": 'api/chara' + encodeURIComponent(searchString),
        "data": {},
        "datatype": "json",
        "success": function(data) {
            for (var index = 0; index < 20; index++) {
                new MovieDetails(data.movie_data[index]);
            }
        },
        "error": handleError
    });
}
