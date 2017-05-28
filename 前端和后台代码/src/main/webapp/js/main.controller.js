/*(function () {
  'use strict';
  var APP_KEY = 'App';//常量
  angular.module('starter.controllers')
    .controller('AppCtrl', ['$scope', 'LocalStorageService','$state', function ($scope, LocalStorageService,$state) {
      var value = LocalStorageService.get('App', {
        version: '1.0.0',
        run: false,
      });
       console.log(value.run);
      if (value.run) {
		  // console.log("1111");
        $state.go('login');
      }
    }]);
})();
*/