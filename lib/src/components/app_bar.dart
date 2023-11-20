import 'package:flutter/material.dart';

class FallbackDSRenameAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? title;

  const FallbackDSRenameAppBar({super.key,this.title});

  @override
  State<FallbackDSRenameAppBar> createState() => _FallbackDSRenameAppBarState();
  
  @override
  Size get preferredSize => AppBar().preferredSize;

}

class _FallbackDSRenameAppBarState extends State<FallbackDSRenameAppBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.preferredSize.height,
      width: widget.preferredSize.width,
      child: Row(
        children: [

        ],
      ),
    );
  }


}