import 'package:flutter/material.dart';

import '../widget/topic_card.dart';


class QuestionAndAnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text(
        'Chủ đề nổi bật',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFC41E3A)),
      ),),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: [
              TopicCard(title: 'Sau đại học', comments: '0', views: '102087', highlighted: true),
              TopicCard(title: 'Kỳ thi Đánh giá tư duy (TSA)', comments: '0', views: '844677'),
              TopicCard(title: 'Tuyển sinh ĐHBKHN 2020', comments: '180', views: '675377'),
              TopicCard(title: 'Phương thức xét tuyển', comments: '83', views: '577102'),
              TopicCard(title: 'Xét tuyển tài năng', comments: '319', views: '524533'),
              TopicCard(title: 'Đăng ký xét tuyển 2021', comments: '268', views: '446620'),
              TopicCard(title: 'Bài kiểm tra tư duy', comments: '230', views: '442001'),
              TopicCard(title: 'Lựa chọn ngành', comments: '34', views: '379024'),
            ],
          ),
        ),

    );
  }
}


