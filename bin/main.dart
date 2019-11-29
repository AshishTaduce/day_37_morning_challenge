// Container With Most Water
// Given n non-negative integers a1, a2, ..., an , where each represents a point
// at coordinate (i, ai). n vertical lines are drawn such that the two endpoints
// of line i is at (i, ai) and (i, 0). Find two lines, which together with
// x-axis forms a container, such that the container contains the most water.
//
// Note: You may not slant the container and n is at least 2.
// Image URL: https://s3-lc-upload.s3.amazonaws.com/uploads/2018/07/17/question_11.jpg

// The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7].
// In this case, the max area of water (blue section) the container can contain is 49.

import 'dart:math';

int maxWater(List <int> inputs){
  List<List<int>> coordinates = [];
  List<int> listOfAreas = [];
  for(int i = 0; i< inputs.length; i++){
    coordinates.add([i,inputs[i]]);
  }
  //print(coordinates);
  //return null;
  for(int i =0; i<coordinates.length; i++){
    List copy = List.from(coordinates);
    List<int> temp = copy.removeAt(i);
    for(List <int> list in copy){
      int area = [temp[1],list[1]].reduce(min) * (temp[0] - list[0]).abs();
      listOfAreas.add(area);
    }
  }
  //print (listOfAreas);
  return listOfAreas.reduce(max);
}

main() {
  print(maxWater([1,8,6,2,5,4,8,3,7]));
}