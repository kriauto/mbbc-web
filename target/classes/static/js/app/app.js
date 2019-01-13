var app = angular.module('crudApp',['ui.router','ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:8080/SpringBootCRUDApp',
    USER_SERVICE_API : 'http://localhost:8080/SpringBootCRUDApp/api/user/'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $stateProvider
        .state('quality', {
            url: '/quality',
            templateUrl: 'partials/quality'
        });
        $stateProvider
        .state('admin', {
            url: '/admin',
            templateUrl: 'partials/admin'
        });
        $stateProvider
        .state('home', {
            url: '/home',
            templateUrl: 'partials/admin'
        });
        $urlRouterProvider.otherwise('/');
    }]);

