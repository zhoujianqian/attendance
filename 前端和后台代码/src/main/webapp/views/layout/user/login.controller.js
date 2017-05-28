/**
 * Created by Administrator on 2017/4/12.
 */
angular.module("starter.controllers",['ui.router'])
.controller("LoginCtrl", ['$scope','$http','$location','$state',function($scope,$http,$location,$state) {
	"use strict";
$scope.resetInfo=function()
{
    $scope.username="";
    $scope.password="";
}
$scope.login = function() {
	
	var username =  $scope.username;
	var password =  $scope.password;
	alert(username+password);
	  $http({
	   url:'http://localhost:8080/web-login/findUser/'+username+'/'+password,
	   method: 'get' ,
	  })
	 .then(function(success){
		 console.log(success.data);
		 if(success.data.success==true){
			 console.log("登录成功");
			 
			// $state.go('app');
			 location.href = 'http://localhost:8080/web-login/index.html' ;
			 
		 }else{
			 console.log("登录失败");
		 }
         
},function(error){

})

	 }

}]);