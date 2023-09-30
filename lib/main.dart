import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp( const Myapp());
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
      appBar: AppBar(title: Text('News Feed'),),
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
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 10,),
          ListView.separated(
            shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context , index){
                  return Container(
                    width: 150,
                      height: 150 ,
                    child: Image.network('https://images.unsplash.com/photo-1594835139718-6918945f2c56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
                  );
                },separatorBuilder: (context, index){return Divider();},

                ),
        ],
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
    body: GridView.builder(itemCount: 14,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 2),
        itemBuilder: (context , index){return Container(

      width: 150,
      height: 150 ,
      child: Image.network('https://images.unsplash.com/photo-1594835139718-6918945f2c56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',),

    );}),

  );
  }

  }

