/**
 * Created by Administrator on 2017/4/12.
 */
angular.module('', ['ui.router','starter.controllers'])
.controller('LoginCtrl', function ($scope, $state) {
    $scope.toMain = function () {
        console.log('fgdgfd');
        $state.go('app.main');
    };
});