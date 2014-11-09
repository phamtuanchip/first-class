var myapp = angular.module('myapp',[]);
myapp.controller('TodoController',function HelloController($scope){
	$scope.todos = [];
	$scope.todo = {text:'',points:0,done:false};

	$scope.save = function(todo){
		todo.done = false;
		$scope.todos.push(todo);
		$scope.todo = {};
	}
	$scope.totalPoints = function(){
		var total = 0;
		for(var i = 0;i< $scope.todos.length;i++){
			total = total + $scope.todos[i].points;
		}
		return total;
	}
	$scope.donePoints = function(){
		var donePoints = 0;
		for(var i = 0;i< $scope.todos.length;i++){
			if($scope.todos[i].done){
				donePoints = donePoints + $scope.todos[i].points;
			}
		}
		return donePoints;
	}

	$scope.taskUpdate = function(todo,$index){
		$scope.todos[$index] = todo;
	}

	$scope.showStats = function(){
		return $scope.totalPoints() > 0
	}

	function showMessage(newValue,oldValue, $scope){
		if($scope.totalPoints() !=0 && newValue == $scope.totalPoints()){
			$scope.message = "Congrats, you have done all the tasks!!!";
		}else{
			$scope.message = "";
		}
		
	}

	$scope.$watch($scope.donePoints,showMessage);
});
