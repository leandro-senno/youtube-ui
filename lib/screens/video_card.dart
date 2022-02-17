import 'package:flutter/material.dart';
import 'package:project_flutter/model/video_model.dart';

Widget videoCard(VideoModel model) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(bottom: 26),
      child: Column(
        children: [
          //Aqui será iniciado a thumbnail e a duração
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(model.thumnail!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 30,
                bottom: 20,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black87,
                  ),
                  child: Text(
                    model.videoDuration!,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(model.avatar!),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.videoTitle!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("${model.channel}  -  ${model.views}"),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
