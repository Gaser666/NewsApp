import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/list_tile_model.dart';
import 'package:news_app/views/web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key, required this.tile});
  final ListTileModel tile;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: tile.lstTileImage != null
                ? Image.network(tile.lstTileImage!,
                    height: 200, width: double.infinity, fit: BoxFit.fill)
                : Image.network(
                    'https://st2.depositphotos.com/3268541/5705/v/450/depositphotos_57057941-stock-illustration-no-photo-camera-vector-sign.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            tile.discription,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            tile.listTileRef ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
