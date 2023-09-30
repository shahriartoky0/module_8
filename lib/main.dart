import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(context) {
  return const MaterialApp(home: HomeActivity(),);
  }

}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),),
      body:
      OrientationBuilder(
        builder: (context, Orientation orientation) {
          return orientation == Orientation.portrait
              ? _buildPortraitView()
              : _buildLandscapeView();
        },
      ),

    );
  }
  }

  class _buildPortraitView extends StatelessWidget
  {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 300,
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(150) ),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.network("https://images.unsplash.com/photo-1586810724476-c294fb7ac01b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80",fit: BoxFit.fill,)),),
            Text('Golam Shahriar Toky' ,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
            SizedBox(height: 10,),
            Wrap(
              children: [
                Container( height: 230,width: 400,child: Text('Lorem ipsum dolor sit amet, . Cras dapibus. Vivamus elementum semper nisi.  Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,'))
              ],
            ),
            GridView.builder(shrinkWrap: true,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 2),
              itemCount: 6,
              itemBuilder: (context, index){
                return Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.all(3),
                  child: Image.network('https://images.unsplash.com/photo-1586810724476-c294fb7ac01b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80',fit: BoxFit.fill,),
                );


              },
            ),
          ],
        ),
      ),
    ),




  );
  }

  }
  class _buildLandscapeView extends StatelessWidget
  {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 40,
            child: Container(
              width: 350,
              height: 350,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(150) ),
              margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: ClipRRect( borderRadius: BorderRadius.circular(200),child: Image.network("https://images.unsplash.com/photo-1586810724476-c294fb7ac01b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80",fit: BoxFit.fill,)),),
          ),
          // SizedBox(width: 5,),
          Expanded(
            flex: 60,
            child: Column(
              children: [
                Text('Golam Shahriar Toky' ,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
            SizedBox(height: 5,),
                Container(
                    width: 400,
                    child: Text(' Lorem ipsum dolor sit amet, . Cras dapibus. Vivamus elementum semper nisi.  Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,'))
            ,
                Container(

                  width: 400 ,
                  child: GridView.builder(shrinkWrap: true,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 2),
                    itemCount: 6,
                    itemBuilder: (context, index){
                      return Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(3),
                        child: Image.network('https://images.unsplash.com/photo-1586810724476-c294fb7ac01b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1936&q=80',fit: BoxFit.fill,),
                      );


                    },
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    ),
  );
  }

  }

