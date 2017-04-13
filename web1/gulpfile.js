var gulp = require('gulp');
var connect = require('gulp-connect');

/*gulp.task('watch', ['sass'], function() {
    gulp.watch(paths.sass, ['sass']);
});*/

gulp.task('connect', function() {
    connect.server({
        root:'www'
        ,port:8080
        ,livereload:true
    });
});
gulp.task('default',['connect']);


