/**
 * Created by Administrator on 2017/4/8.
 */
angular.module('starter', ['ui.router','starter.controllers'])
.config(['$stateProvider','$urlRouterProvider',function($stateProvider,$urlRouterProvider){
    $stateProvider.state('app',{   //模板页面
        url:'/app',
        templateUrl: 'views/appBorder/appBorder.html',
        controller: 'AppCtrl'
    })

      .state('app.main',{    //后台主界面
       url: '/main',
      views: {
             'mainContainer':
              {template:"<div>考勤管理系统，现在是2017年4月12号</div>"}
                // , controller: 'PlaylistCtrl'
   }
   })
        .state('app.user',{     //登录界面
            url: '/data',
            views:{
                'mainContainer':
                    {templateUrl: 'views/layout/system/user.html'}
            }
        })
        .state('app.role',{     //登录界面
            url: '/data',
            views:{
                'mainContainer':
                    {templateUrl: 'views/layout/system/role.html'}
            }
        })
        .state('app.authority',{     //登录界面
            url: '/data',
            views:{
                'mainContainer':
                    {templateUrl: 'views/layout/system/authority.html'}
            }
        })
        .state('app.data',{     //登录界面
            url: '/data',
            views:{
                'mainContainer':
                    {templateUrl: 'views/layout/system/data.html'}
            }
        })

        .state('login',{     //登录界面
        url: '/login',
        templateUrl: 'views/layout/user/login.html'
         //,controller: 'LoginCtrl'
    })
        .state('register',{     //登录界面
            url: '/register',
            templateUrl: 'views/layout/user/register.html'//,
        })
    .state('findpwd',{     //登录界面
        url: '/finfpwd',
        templateUrl: 'views/layout/user/findpwd.html'//,
    });

        // if none of the above states are matched, use this as the fallback
        $urlRouterProvider.otherwise('/app/main');
    }]);