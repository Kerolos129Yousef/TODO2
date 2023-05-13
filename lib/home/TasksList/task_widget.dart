import 'package:flutter/material.dart';
import 'package:todo_2/my_theme.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class TaskWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child: Slidable(
          startActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {

                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: "Delete",
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
              )
            ],
          ),
          endActionPane:  ActionPane(
            motion: ScrollMotion(),
            children: [
            SlidableAction(
            // An action can be bigger than the others.
            flex: 2,
            onPressed: (context){},
            backgroundColor: Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive')]
          ),
          child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
          ),
          child: Row(
            children: [
              Container(
                width:8,
                height: 80,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(width: 30,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Play basketBall ",style:Theme.of(context).textTheme.titleMedium
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.watch_later_outlined),
                            SizedBox(width: 5,),
                            Text("10:30 AM",style:Theme.of(context).textTheme.bodySmall,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor,
                      ),

                      child: Icon(Icons.check,color: Colors.white,),
                    )
                  ],
                ),
              )
            ],
          ),
    ),
        ),
      );
  }
}



