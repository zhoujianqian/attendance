/**
 * Created by Administrator on 2017/4/8.
 */
angular.module('starter', ['ui.router','starter.controllers'])
.config(['$stateProvider','$urlRouterProvider',function($stateProvider,$urlRouterProvider){
    $stateProvider.state('app',{   //模板页面
        url:'/app',
        templateUrl: 'views/appBorder/appBorder.html'
       //,controller: 'AppCtrl'
    })
        .state('app.user',{     //角色界面
            url: '/data',
            views:{
                'mainContainer':
                {templateUrl: 'views/layout/system/user.html'}
            }
        })

        .state('app.role',{     //角色界面
            url: '/data',
            views:{
                'mainContainer':
                    {templateUrl: 'views/layout/system/role.html'}
            }
        })
        .state('app.authority',{     //权限界面
            url: '/data',
            views:{
                'mainContainer':
                    {templateUrl: 'views/layout/system/authority.html'}
            }
        })
        .state('app.data',{     //数据字典界面
            url: '/data',
            views:{
                'mainContainer':
                    {templateUrl: 'views/layout/system/data.html'}
            }
        })

        .state('login',{     //登录界面
        url: '/login',
        templateUrl: 'views/layout/user/login.html'
        ,controller: 'LoginCtrl'
    })
        .state('register',{     //注册界面
            url: '/register',
            templateUrl: 'views/layout/user/register.html'//,
        })
    .state('findpwd',{     //找回密码界面
        url: '/finfpwd',
        templateUrl: 'views/layout/user/findpwd.html'//,
    })

    //列表界面
    .state('app.classlist',{      //班级列表界面
        url: '/data',
        views:{
            'mainContainer':
            {templateUrl: 'views/layout/list/classlist.html'}
        }
    })
    .state('app.signrecordlist',{      //学生签到列表界面
            url: '/data',
            views:{
                'mainContainer':
                {templateUrl: 'views/layout/list/signrecordlist.html'}
            }
        })
        .state('app.studentlist',{      //学生列表界面
            url: '/data',
            views:{
                'mainContainer':
                {templateUrl: 'views/layout/list/studentlist.html'}
            }
        })
        .state('app.teachplanlist',{      //学生签到列表界面
            url: '/data',
            views:{
                'mainContainer':
                {templateUrl: 'views/layout/list/teachplanlist.html'}
            }
        })

    .state('app.detailplanlist',{      //教学计划详细列表界面
        url: '/data',
        views:{
            'mainContainer':
            {templateUrl: 'views/layout/list/detailplanlist.html'}
        }
    });
    
        // if none of the above states are matched, use this as the fallback
        $urlRouterProvider.otherwise('/app');
    }]);