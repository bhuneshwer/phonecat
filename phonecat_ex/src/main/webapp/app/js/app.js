'use strict';

/* App Module */

var phonecatApp = angular.module('phonecatApp', [
  'ngRoute',
  'phonecatControllers',
  'phonecatFilters',
  'phonecatServices',

]);

phonecatApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/phones', {
        templateUrl: 'partials/phone-list.html',
        controller: 'PhoneListCtrl'
      }).
      when('/Add', {
          templateUrl: 'partials/phone-add.html',
          controller: 'PhoneAddCtrl'
        }).
        when('/phones/:phoneId', {
            templateUrl:'partials/phone-add.html',
            controller:'EditCtrl'
          }).
        
      otherwise({
        redirectTo: '/phones'
      });
  }]);
