import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 50,
      width: MediaQuery.of(context).size.width*.8,
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(10) ,
                  bottomLeft: Radius.circular(10),

                    )),

              ),
                onPressed: (){},
                child: Text("19.99\$",style: Styles.textStyle14.copyWith(color: Colors.black),)),
          ),
         Custom_HalfButton(),
        ],
      ),
    );
  }
}

class Custom_HalfButton extends StatelessWidget {
  const Custom_HalfButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child:     TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xffEF8262),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topRight:Radius.circular(10) ,
            bottomRight: Radius.circular(10),

          )),

        ),
        onPressed: (){},
        child: Text(" Free Preview",style: Styles.textStyle14.copyWith(color: Colors.black),)),);
  }
}
