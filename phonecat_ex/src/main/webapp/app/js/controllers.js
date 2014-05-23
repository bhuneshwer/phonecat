'use strict';

/* Controllers */

var phonecatControllers = angular.module('phonecatControllers', []);

phonecatControllers.controller('PhoneListCtrl', [ '$scope', 'Phone', '$http',
		'$location', function($scope, Phone, $http, $location) {
			$scope.phones = Phone.query();
			$scope.orderProp = 'age';
			$scope.delPhone = function(id) {
				var adr = '../phonegallarys/' + id;
				$http({
					method : 'DELETE',
					url : adr,
					headers : {
						'content-Type' : 'application/json'
					},

				}).success(function(status, headers, config) {
					$location.path('/');
					alert("deleted");
				});
			};

		} ]);
phonecatControllers.controller('EditCtrl', [ '$scope','Phone', '$http',
		'$location', function($scope,Phone,$http, $location) {
			$scope.phone=Phone.query1();
			
			$scope.modify = function(id) {
				$http({
					method : 'PUT',
					url : '../phonegallarys/'+id,
					headers : {
						'content-Type' : 'application/json'
					},
					data : $scope.phone
				}).success(function(data, status, headers, config) {alert("modified");
					$location.path('/');
				}).error(function(data, status, headers, config) {
					alert();
				});
			};
			
			

		} ]);
phonecatControllers.controller('PhoneAddCtrl', [ '$scope', '$http',
		'$location', function($scope, $http, $location) {
			$scope.phones = {};
			$scope.create = function() {
				$http({
					method : 'POST',
					url : '../phonegallarys',
					headers : {
						'content-Type' : 'application/json'
					},
					data : $scope.phone
				}).success(function(data, status, headers, config) {
					$location.path('/');
				}).error(function(data, status, headers, config) {
					alert();
				});
			};

		} ]);
