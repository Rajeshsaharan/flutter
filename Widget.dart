
class Widget {
  Widget() {
    //constrctor
  }

  createElement() {
    // a method
    //add a element to tree
  }
}

abstract class statelessWidget extends Widget {
  statelessWidget() {}

  Widget build();
}



class myclass extends statelessWidget {
  @override
  Widget build() {
    return anyclassthatextendsfromwidget(); /// !important 
  }
}



class myclass2 extends statelessWidget {
  @override
  Widget build() {
    return myclass();
  }
}
