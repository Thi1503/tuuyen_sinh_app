import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebViewExample extends StatefulWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  State<WebViewExample> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // Enable JavaScript
      ..setBackgroundColor(const Color(0xFFFFFFFF)) // Set background color
      ..setNavigationDelegate(NavigationDelegate(
        onWebResourceError: (error) {
          debugPrint("Error loading page: ${error.description}");
        },
      ));
    _loadHtmlContent();
  }

  void _loadHtmlContent() {
    const String htmlContent = '''
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
      <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 10px;
          line-height: 1.6;
          font-size: 16px;
        }
        img {
          max-width: 100%;
          height: auto;
        }
        .title {
          font-size: 22px;
          font-weight: bold;
          margin-bottom: 10px;
        }
        .date-created {
          font-size: 14px;
          color: gray;
        }
        .description {
          font-size: 16px;
        }
      </style>
    </head>
    <body>
      <div id="content" class="col-md-9 col-sm-9">
                        <div class="title-search">
                            <h1 class="title">Giới thiệu về Kỳ thi Đánh giá tư duy - TSA</h1>
                            <p class="date-created"><i class="fas fa-calendar-alt"></i>01-01-2025</p>
                        </div>
                        <div class="description">
                            <div class="excerpt"></div>
                            <p><span style="color: rgb(224, 62, 45);"><strong>I. KỲ THI ĐÁNH GIÁ TƯ DUY LÀ GÌ?</strong></span></p>
<p><span lang="VI" style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Với mong muốn mang kỳ</span><span style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> thi </span><span lang="VI" style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Đánh giá </span><span style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">tư duy của các nước phát triển</span><span lang="VI" style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> trên thế giới về với học sinh Việt Nam, trong những năm qua, Đại học Bách khoa Hà Nội đã tiến hành nghiên cứu, thiết kế và triển khai tổ chức Kỳ thi Đánh giá tư duy (Thinking Skills Assessment - TSA). Mục tiêu của Bài thi TSA là đánh giá ba năng lực tư duy nền tảng của học sinh, bao gồm: Tư duy Toán học, Tư duy Đọc hiểu và Tư duy Khoa học/Giải quyết vấn đề - những yếu tố quan trọng giúp học sinh có thể học tập tốt nhất tại môi trường giáo dục đại học. </span><span style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Theo đó, Bài thi sẽ</span><span style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> </span><span style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">không trực tiếp kiểm tra kiến thức của môn học cụ thể</span><span lang="VI" style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> nào</span><span style="font-size: 12.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">, mà thông qua các câu hỏi để đánh giá năng lực tư duy của thí sinh. Ba mức độ tư duy được đánh giá qua Bài thi là: Tư duy tái hiện (M1), Tư duy suy luận (M2) và Tư duy bậc cao (M3). Kỳ thi TSA </span><span lang="VI" style="font-size: 12.0pt; mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">được tổ chức theo hướng tinh gọn, hiệu quả, ứng dụng những công nghệ khảo thí ti</span><span style="font-size: 12.0pt; mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">ên tiến</span><span lang="VI" style="font-size: 12.0pt; mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">, tiếp cận với các kỳ thi đánh giá tư duy hiện đại trên thế giới</span><span style="font-size: 12.0pt; mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">,</span><span lang="VI" style="font-size: 12.0pt; mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> như</span><span lang="VI" style="font-size: 12.0pt; mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> </span><span lang="VI" style="font-size: 12.0pt; mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Aptos; mso-fareast-theme-font: minor-latin; color: black; mso-themecolor: text1; mso-ansi-language: VI; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">SAT, ACT...</span></p>
<p style="text-align: center;"><span style="color: rgb(0, 0, 0);"><iframe title="YouTube video player" src="https://www.youtube.com/embed/Xdd8LLH1jIE?si=WgzAY54uM1Rgppk2" width="300" height="315" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="allowfullscreen"></iframe></span></p>
<p style="text-align: center;"><span style="color: rgb(0, 0, 0);">Video giới thiệu tóm tắt về Kỳ thi đánh giá tư duy</span></p>
<p><strong><span style="color: rgb(0, 0, 0);"><span style="color: rgb(224, 62, 45);">II.</span> <span style="color: rgb(224, 62, 45);">ĐĂNG KÝ THI</span></span></strong></p>
<p><span style="color: rgb(0, 0, 0);">Thời gian mở đăng ký thi đánh giá tư duy thường từ trước 2 tuần - 3 tuần tại thời điểm diễn ra Đợt thi. Thí sinh thực hiện đăng ký bằng cách làm theo hướng dẫn khi truy cập vào </span>Cổng thông tin Tuyển sinh-Hướng nghiệp:&nbsp;<a href="https://ts-hn.hust.edu.vn/" target="_blank" rel="noopener"><strong>https://ts-hn.hust.edu.vn</strong></a></p>
<p>Sau đó nhấp chuột vào biểu tượng&nbsp;<strong>"Kỳ thi ĐGTD (TSA)"</strong>, chọn&nbsp;<strong>Đăng ký</strong>&nbsp;để tiếp tục.</p>
<p style="text-align: center;"><a href="https://tsa.hust.edu.vn/" target="_blank" rel="noopener"><strong><img src="https://ts.hust.edu.vn//storage/app/public/posts/November2023/dky-tsa.jpg" alt="" width="560" height="286"></strong></a></p>
<p style="text-align: center;">Thí sinh cần có Căn cước công dân để tiến hành đăng ký tài khoản trên website&nbsp;<a href="https://tsa.hust.edu.vn/dk" target="_blank" rel="noopener">https://tsa.hust.edu.vn/dk</a></p>
<p><span style="color: rgb(224, 62, 45);"><strong>Chi tiết: <a href="https://ts.hust.edu.vn/tin-tuc/huong-dan-cac-buoc-dang-ky-ky-thi-danh-gia-tu-duy-2024">Hướng dẫn các bước đăng ký Kỳ thi Đánh giá tư duy</a></strong></span></p>
<p><span style="color: rgb(224, 62, 45);"><strong>III. CẤU TRÚC BÀI THI ĐÁNH GIÁ TƯ DUY</strong></span></p>
<p><span style="color: rgb(0, 0, 0);">Để phù hợp với chương trình giáo dục phổ thông mới của Bộ Giáo dục và Đào tạo, từ năm 2022, cấu trúc và nội dung các phần thi trong Bài thi Đánh giá tư duy của Đại học Bách khoa Hà Nội đã được thiết kế theo hướng gọn nhẹ, hiện đại, xóa bỏ tư duy theo tổ hợp môn học. Theo đó, tổng thời gian của Bài thi là 150 phút, bao gồm 100 câu hỏi trắc nghiệm cho 03 phần thi. Phần thi Tư duy Toán học có thời lượng là 60 phút, phân thi Tư duy Đọc hiểu có thời lượng là 30 phút và phần thi Tư duy Khoa học/Giải quyết vấn đề có thời lượng là 60 phút. Cấu trúc chi tiết của Bài thi được mô tả như sau</span></p>
<p style="text-align: center;"><img src="https://ts.hust.edu.vn/storage/app/public/posts/November2024/tsa-1.jpg" alt="" width="560" height="179"></p>
<p style="text-align: justify;"><strong>Phần thi Tư duy Toán học:</strong> Đánh giá khả năng tư duy và vận dụng những kiến thức cơ bản của Toán học vào giải quyết những bài toán trong thực tế, đồng thời đánh giá khả năng học toán và các môn khoa học liên quan ở bậc đại học của thí sinh. Nội dung phần thi Tư duy Toán học nằm trong chương trình trung học phổ thông gồm kiến thức về số học, đại số, hàm số, hình học, thống kê và xác xuất. Cấu trúc câu hỏi đòi hỏi phải có ý nghĩa cả về vấn đề và ngữ cảnh, đại diện cho các mối quan hệ Toán học; truy cập các kiến thức Toán học bằng trí nhớ; kết hợp với thông tin đã cho; mô hình hóa, tính toán và thao tác Toán học; diễn giải; áp dụng các kỹ năng lập luận, đưa ra quyết định dựa trên Toán học và thuật toán/tựa thuật toán phù hợp. Phần thi Tư duy Toán học nhấn mạnh tới tư duy định lượng và áp dụng phần tính toán.</p>
<p style="text-align: justify;"><strong>Phần thi Tư duy Đọc hiểu: </strong>Đọc hiểu là một trong những năng lực cốt lõi, cần thiết cho việc tự học và học tập suốt đời. Do đó, phần thi này tập trung đánh giá kỹ năng đọc nhanh, hiểu đúng, cùng với năng lực phân tích, lý giải văn bản, khái quát, tổng hợp, biện luận về logic và suy luận từ các văn bản tiếng Việt có độ dài từ 800 đến 1.000 từ. Nội dung đọc hiểu trong đề thi đa dạng, phong phú, liên quan tới những chủ đề về khoa học, công nghệ, kinh tế, kỹ thuật, công nghiệp, nông nghiệp, tài chính, ngân hàng, y dược. Các câu hỏi của phần thi này yêu cầu thí sinh chuyển hóa ý nghĩa từ một số văn bản thuộc các thể loại như văn bản khoa học, văn bản văn học hay văn bản báo chí nhằm đo lường khả năng thu thập được thông tin với những gì được tuyên bố rõ ràng và lập luận để xác định ý nghĩa tiềm ẩn. Cụ thể là, các câu hỏi yêu cầu học sinh sử dụng các kỹ năng viện dẫn và lập luận để xác định các ý chính, định vị và giải thích các chi tiết quan trọng; hiểu chuỗi các sự kiện, so sánh, hiểu mối quan hệ nhân quả, xác định ý nghĩa của từ, cụm từ và các tuyên bố dựa vào ngữ cảnh. Khái quát hóa, phân tích giọng văn và phương pháp của tác giả; phân tích các đòi hỏi và bằng chứng trong các cuộc tranh luận và tích hợp thông tin từ nhiều văn bản liên quan.</p>
<p style="text-align: justify;"><strong>Phần thi Tư duy Khoa học/Giải quyết vấn đề:</strong> Đánh giá khả năng vận dụng kiến thức tổng hợp để giải quyết các vấn đề khoa học một cách hợp lý nhất. Các câu hỏi ở dạng tích hợp các vấn đề liên quan tới các lĩnh vực về khoa học tự nhiên và khoa học công nghệ. Phần thi Tư duy Khoa học của Bài thi là một tập hợp các thông tin khoa học, theo sau đó là các câu hỏi trắc nghiệm nhằm đo lường khả năng tính toán, giải thích được dữ liệu, chỉ ra được phương án phù hợp với ngữ liệu khoa học được đưa ra. Thiết lập và thực hiện được các mô hình đánh giá, suy luận và kết quả thử nghiệm. Thông tin khoa học được truyền tải theo các định dạng khác nhau như biểu diễn dữ liệu (đồ thị khoa học, bảng biểu và sơ đồ), tóm tắt nghiên cứu (mô tả một hoặc nhiều thí nghiệm liên quan) hoặc quan điểm xung đột (hai hoặc nhiều tóm tắt mô hình lý thuyết, hiện tượng không phù hợp với nhau).</p>
<p><span style="color: rgb(224, 62, 45);"><strong>IV. CÁC MỨC ĐỘ TƯ DUY VÀ DẠNG CÂU HỎI TRẮC NGHIỆM</strong></span></p>
<p><span style="color: rgb(0, 0, 0);">Các câu hỏi trong Bài thi Đánh giá tư duy được chia ra thành ba mức độ tư duy khác nhau từ thấp đến cao</span></p>
<p><span style="color: rgb(0, 0, 0);"><strong><em>- Mức độ 1: Tư duy tái hiện</em></strong><br>Thể hiện khả năng nhớ lại kiến thức, thực hiện tư duy theo những quy trình đã biết.<br>Các hành động tư duy cần đánh giá: xác định, tìm kiếm, lựa chọn, nhắc lại, đặt tên, ghép nối ...<br><br><strong><em>- Mức độ 2: Tư duy suy luận</em></strong><br>Thể hiện khả năng lập luận có căn cứ, thực hiện tư duy phân tích, tổng hợp dựa theo vận dụng quy trình thích ứng với điều kiện.<br>Các hành động tư duy cần đánh giá: phân loại, so sánh, chỉ được minh chứng, tổng hợp, vận dụng, đưa ra lí lẽ, suy luận, giải thích, áp dụng, tóm tắt …<br><br><strong><em>- Mức độ 3: Tư duy bậc cao</em></strong><br>Thiết lập và thực hiện được các mô hình đánh giá, giải thích dựa trên bằng chứng.<br>Các hành động tư duy cần đánh giá: phân tích, đánh giá, phân biệt, phán đoán, lập luận (nhiều bước), kiểm tra giả thuyết…<br></span></p>
<p><span style="color: rgb(0, 0, 0);"><strong>Kiểu câu hỏi đánh giá tư duy</strong></span></p>
<p><span style="color: rgb(0, 0, 0);">Câu hỏi trong Bài thi Đánh giá tư duy là các câu hỏi trắc nghiệm hiện đại, bao gồm các dạng sau:</span></p>
<p style="padding-left: 40px;"><span style="color: rgb(0, 0, 0);">(1) Chọn 1 trong 4 đáp án</span></p>
<p style="padding-left: 40px;"><span style="color: rgb(0, 0, 0);">(2) Chọn đáp án Đúng/Sai</span></p>
<p style="padding-left: 40px;"><span style="color: rgb(0, 0, 0);">(3) Chọn nhiều đáp án đúng</span></p>
<p style="padding-left: 40px;"><span style="color: rgb(0, 0, 0);">(4) Kéo thả đáp án đúng từ những đáp án cho trước</span></p>
<p style="padding-left: 40px;"><span style="color: rgb(0, 0, 0);">(5) Điền đáp án đúng</span></p>
<p><em><span style="color: rgb(0, 0, 0);"><span style="text-decoration: underline;">Lưu ý:</span> Đối với các dạng câu hỏi trắc nghiệm hiện đại này, thí sinh phải trả lời đúng hết các ý trong mỗi câu hỏi thì câu hỏi đó mới được tính là trả lời đúng.</span></em></p>
<p><span style="color: rgb(0, 0, 0);"><strong>Các ví dụ mẫu</strong></span></p>
<ul>
<li><span style="color: rgb(0, 0, 0);">Ví dụ phần tư duy toán học: xem<strong>&nbsp;</strong><a href="https://www.hust.edu.vn/uploads/sys/tuyen-sinh/2023_01/2023_01_13-minh-hoa-toan.pdf" data-cke-saved-href="https://www.hust.edu.vn/uploads/sys/tuyen-sinh/2023_01/2023_01_13-minh-hoa-toan.pdf"><u><strong>TẠI ĐÂY</strong></u></a></span></li>
<li><span style="color: rgb(0, 0, 0);">Ví dụ phần tư duy đọc hiểu: xem<strong>&nbsp;</strong><a href="https://www.hust.edu.vn/uploads/sys/tuyen-sinh/2023_01/minh-hoa_tu-duy-doc-hieu.pdf" data-cke-saved-href="https://www.hust.edu.vn/uploads/sys/tuyen-sinh/2023_01/minh-hoa_tu-duy-doc-hieu.pdf"><u><strong>TẠI ĐÂY</strong></u></a></span></li>
<li><span style="color: rgb(0, 0, 0);">Ví dụ phần tư duy khoa học/giải quyết vấn đề: xem<strong>&nbsp;</strong><a href="https://www.hust.edu.vn/uploads/sys/tuyen-sinh/2023_01/minh-hoa_tu-duy-khoa-hoc.pdf" data-cke-saved-href="https://www.hust.edu.vn/uploads/sys/tuyen-sinh/2023_01/minh-hoa_tu-duy-khoa-hoc.pdf"><u><strong>TẠI ĐÂY</strong></u></a></span></li>
</ul>
<p><span style="color: rgb(0, 0, 0);"><strong><span style="color: rgb(224, 62, 45);">Chi tiết: <a title="Hướng dẫn thi thử đánh giá tư duy TSA" href="https://drive.google.com/file/d/1rE8WqwxA5nmcwXhObQlHz7CK_1BMe7MZ/view?usp=sharing" target="_blank" rel="noopener">Hướng dẫn thi thử Đánh giá tư duy</a>&nbsp;</span></strong></span></p>
<p><span style="color: rgb(224, 62, 45);"><strong>V. VIDEO GIỚI THIỆU VỀ KỲ THI ĐÁNH GIÁ TƯ DUY</strong></span></p>
<p><span style="color: rgb(0, 0, 0);">Kể từ năm 2023, ĐH Bách khoa Hà Nội đã phối hợp với VTV7 để thực hiện series bài giảng giới thiệu về Kỳ thi đánh giá tư duy TSA. Chi tiết bạn có thể xem tại Link danh sách video dưới đây:</span></p>
<p style="text-align: center;"><a href="https://www.youtube.com/watch?v=a-dK6dNTBHI&amp;list=PLmQ5jM-TsmbwEr6tNf9xCFp9vPG_ErnW6"><iframe title="YouTube video player" src="https://www.youtube.com/embed/a-dK6dNTBHI?si=qHM6FNMdHU0IDsGm" width="300" height="415" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="allowfullscreen"></iframe></a></p>
<p style="text-align: center;"><span style="color: rgb(45, 34, 192);"><a style="color: rgb(45, 34, 192);" title="Danh sách Video về Kỳ thi Đánh giá tư duy" href="https://www.youtube.com/watch?v=a-dK6dNTBHI&amp;list=PLmQ5jM-TsmbwEr6tNf9xCFp9vPG_ErnW6">Link danh sách Video về Kỳ thi Đánh giá tư duy</a></span></p>
<p><span style="color: rgb(224, 62, 45);"><strong>VI.</strong></span><strong style="color: rgb(224, 62, 45);">&nbsp;CÁC MỐC THỜI GIAN</strong></p>
<p>(1) Đăng ký dự thi chính thức<strong>&nbsp;</strong>theo link:&nbsp;<strong><a tabindex="0" role="link" href="https://tsa.hust.edu.vn/" target="_blank" rel="nofollow noopener" data-cke-saved-href="https://tsa.hust.edu.vn/">https://tsa.hust.edu.vn/</a></strong></p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://ts.hust.edu.vn/storage/app/public/posts/November2024/tsa2025.jpg" alt="Kế hoạch tổ chức thi " width="560" height="383"></p>
<p>(2)<strong>&nbsp;</strong>Các đợt thi:&nbsp;</p>
<center>
<table style="border-collapse: collapse; width: 78.8754%; height: 162.766px; border-width: 2px;" border="1"><colgroup><col style="width: 12.5305%;"><col style="width: 28.3948%;"><col style="width: 39.3158%;"><col style="width: 19.7729%;"></colgroup>
<tbody>
<tr style="height: 40.6875px;">
<td style="text-align: center; height: 40.6875px; border-width: 2px;"><strong>Đợt thi</strong></td>
<td style="text-align: center; height: 40.6875px; border-width: 2px;"><strong>Ngày thi</strong></td>
<td style="text-align: center; height: 40.6875px; border-width: 2px;"><strong>Thời gian mở đăng ký</strong></td>
<td style="text-align: center; height: 40.6875px; border-width: 2px;"><strong>Trạng thái</strong></td>
</tr>
<tr style="height: 40.6875px;">
<td style="text-align: center; height: 40.6875px; border-width: 2px;">Đợt 1</td>
<td style="text-align: center; height: 40.6875px; border-width: 2px;">Ngày 18 - 19/01/2025</td>
<td style="height: 40.6875px; text-align: center; border-width: 2px;">01 - 06/12/2024</td>
<td style="height: 40.6875px; text-align: center; border-width: 2px;">&nbsp;</td>
</tr>
<tr style="height: 40.6875px;">
<td style="text-align: center; height: 40.6875px; border-width: 2px;">Đợt 2</td>
<td style="text-align: center; height: 40.6875px; border-width: 2px;">Ngày 08 - 09/03/2025</td>
<td style="height: 40.6875px; text-align: center; border-width: 2px;">01 - 06/02/2025</td>
<td style="height: 40.6875px; text-align: center; border-width: 2px;">&nbsp;</td>
</tr>
<tr style="height: 40.7031px;">
<td style="text-align: center; height: 40.7031px; border-width: 2px;">Đợt 3</td>
<td style="height: 40.7031px; text-align: center; border-width: 2px;">Ngày 26 - 27/04/2025</td>
<td style="height: 40.7031px; text-align: center; border-width: 2px;">01 - 06/04/2025</td>
<td style="height: 40.7031px; text-align: center; border-width: 2px;">&nbsp;</td>
</tr>
</tbody>
</table>
</center>
<p><span style="text-decoration: underline;"><strong>(*) Lưu ý:</strong></span> Số lượng đăng ký tại từng điểm thi là hữu hạn, địa điểm thi đã đăng ký không thể thay đổi.</p>
<p>(3) Hình thức thi: <strong>Thi trực tuyến trên máy tính tập trung (tại các phòng máy tính của đơn vị tổ chức thi).</strong></p>
<p>(4) Địa điểm tổ chức thi:</p>
<p><strong>- </strong>Tại Hà Nội<strong>: <em>ĐHBK Hà Nội, Trường ĐH Kinh tế Quốc dân, Trường ĐH Xây dựng Hà Nội, Trường ĐH Thủy Lợi, Học viện Ngân hàng, Trường ĐH Giao thông vận tải, Trường ĐH Công nghiệp Hà Nội, Trường ĐH Kinh tế kỹ thuật công nghiệp và một số cơ sở giáo dục đại học khác.</em></strong></p>
<p><strong>- </strong>Tại Nghệ An<strong>: <em>Trường ĐH Vinh.</em></strong></p>
<p><strong>- </strong>Tại Thanh Hóa<strong>: <em>Trường ĐH Hồng Đức.</em></strong></p>
<p><strong>- </strong>Tại Hải Phòng<strong>: <em>Trường ĐH Hàng hải Việt Nam.</em></strong></p>
<p><strong>- </strong>Tại Nam Định<strong>: <em>Trường ĐH Sư phạm kỹ thuật Nam Định,</em></strong></p>
<p><strong>- </strong>Tại Hưng Yên<strong>: <em>Trường ĐH Sư phạm kỹ thuật Hưng Yên.</em></strong></p>
<p><strong>- </strong>Tại Thái Nguyên<strong>: <em>Trung tâm Khảo thí và Đảm bảo chất lượng giáo dục – ĐH Thái Nguyên.</em></strong></p>
<p><strong>- </strong>Tại Đà Nẵng<strong>: <em>Trường ĐHBK – ĐH Đà Nẵng.</em></strong></p>
<p><strong>- </strong>Tại Thái Bình<strong>: <em>Trường ĐH Thái Bình.</em></strong></p>
<p><strong>- </strong>Tại Hải Dương<strong>: <em>Trường ĐH Sao đỏ.</em></strong></p>
<p><strong>- </strong>Tại Quảng Ninh<strong>: <em>Trường ĐH Hạ Long.</em></strong></p>
<p>- Tại Lào Cai: <em><strong>Trường ĐH Thái Nguyên - Phân hiệu Lào Cai.</strong></em></p>
<p>Xem thêm: Quy chế thi ĐGTD chi tiết xem thêm&nbsp;<a href="https://drive.google.com/file/d/1SJ1VnlXIXQHshZvqmu6KC6iN66l_RCxA/view?usp=sharing" target="_blank" rel="noopener"><strong>TẠI ĐÂY</strong></a>.</p>
<p><span style="color: rgb(224, 62, 45);"><strong>VII.</strong></span><strong style="color: rgb(224, 62, 45);"> DANH SÁCH CÁC TRƯỜNG SỬ DỤNG KẾT QUẢ BÀI THI ĐÁNH GIÁ TƯ DUY</strong></p>
<p class="Normal"><em>Tính đến tháng 11/2024, đã có <strong>40 trường</strong> sử dụng kết quả bài thi đánh giá tư duy của ĐH Bách khoa Hà Nội. Các trường đăng ký sử dụng kết quả Kỳ thi đánh giá tư duy để tuyển sinh không phải đóng góp bất cứ khoản phí nào.</em></p>
<p class="Normal">1. Đại học Bách khoa Hà Nội</p>
<p class="Normal">2. Trường Đại học Công nghệ Giao thông vận tải</p>
<p class="Normal">3. Trường Đại học Giao thông vận tải</p>
<p class="Normal">4. Trường Đại học Kinh tế Quốc dân</p>
<p class="Normal">5. Trường Đại học Thủy lợi</p>
<p class="Normal">6. Trường Đại học Xây dựng Hà Nội</p>
<p class="Normal">7. Trường Đại học Mỏ Địa chất</p>
<p class="Normal">8. Học viện Tài chính</p>
<p class="Normal">9. Trường Đại học Sư phạm kỹ thuật Hưng Yên</p>
<p class="Normal">10. Trường Đại học Kinh tế Kỹ thuật công nghiệp</p>
<p class="Normal">11. Trường Đại học Thương mại</p>
<div id="sis_outstream__c" data-set="dfp"></div>
<p class="Normal">12. Trường Đại học Công nghiệp Hà Nội</p>
<p class="Normal">13. Trường Đại học Dược Hà Nội</p>
<p class="Normal">14. Trường Đại học Mở Hà Nội</p>
<p class="Normal">15. Trường Đại học Hà Nội</p>
<p class="Normal">16. Trường Đại học Công nghệ Đông Á</p>
<p class="Normal">17. Trường Đại học Kinh tế Nghệ An</p>
<p class="Normal">18. Trường Đại học Vinh</p>
<p class="Normal">19. Trường Đại học Hồng Đức</p>
<p class="Normal">20. Trường Đại học Dầu khí Việt Nam</p>
<p class="Normal">21. Trường Đại học Công nghệ và Quản lý Hữu nghị</p>
<p class="Normal">22. Trường Đại học Quy Nhơn</p>
<p class="Normal">23. Trường Đại học Nguyễn Trãi</p>
<p class="Normal">24. Trường Đại học Đông Đô</p>
<p class="Normal">25. Trường Đại học Chu Văn An</p>
<p class="Normal">26. Học viện Chính sách và Phát triển</p>
<p class="Normal">27. Trường Đại học Hải Phòng</p>
<p class="Normal">28. Học viện Công nghệ Bưu chính - Viễn thông (cơ sở phía bắc)</p>
<p class="Normal">29. Trường Đại học Lâm nghiệp (cơ sở 1)</p>
<p class="Normal">30. Trường Đại học Thái Bình</p>
<p class="Normal">31. Trường Đại học Sư phạm Kỹ thuật Vinh</p>
<p class="Normal">32. Trường Đại học Quốc tế Bắc Hà</p>
<p class="Normal">33. Trường Đại học Phenikaa</p>
<p class="Normal">34. Trường Đại học Khoa học - Đại học Thái Nguyên</p>
<p class="Normal">35. Trường Đại học Thái Bình</p>
<p class="Normal">36. Trường Đại học Sư phạm Kỹ thuật Nam Định</p>
<p class="Normal">37. Trường Đại Học Thái Bình&nbsp;</p>
<p class="Normal">38. Trường Đại Học Tài Nguyên Và Môi Trường Hà Nội</p>
<p class="Normal">39. Học Viện Tài Chính</p>
<p class="Normal">40. Trường Đại Học Hạ Long</p>
<p>Mọi thông tin thắc mắc hoặc cần hỗ trợ giải đáp, thí sinh có thể liên hệ tới Hotline&nbsp;<strong>084 868 3408, </strong>mục <a href="https://ts.hust.edu.vn/hoi-dap" target="_blank" rel="noopener" data-cke-saved-href="https://ts.hust.edu.vn/hoi-dap"><strong>Hỏi Đáp</strong></a>, tại&nbsp;group<strong>&nbsp;<a href="https://www.facebook.com/groups/kythidanhgiatuduy/" data-cke-saved-href="https://www.facebook.com/groups/kythidanhgiatuduy/">Kỳ thi Đánh giá tư duy</a>.</strong></p>
<p>&nbsp;</p>
                        </div>
                                                                        <div class="social-share clearfix">
                            <ul class="comment-like clearfix">
                                <li class="ic-like">
                                                                            <a href="https://ts.hust.edu.vn/login" class="like-post"><i class="far fa-heart"></i></a>
                                                                        <span>Lưu tin</span>
                                </li>
                                <li class="ic-comment">
                                    <a href="#" class="comment" data-toggle="modal" data-target="#notify-op"><i class="fas fa-comment-alt"></i></a>
                                    <span>Bình luận</span>
                                </li>
                            </ul>
                            <ul class="social-icons">
                                <li>
                                    <a href="http://www.facebook.com/sharer.php?u=https://ts.hust.edu.vn/tin-tuc/gioi-thieu-ve-ky-thi-danh-gia-tu-duy-tsa" class="facebook" target="_blank" title="Chia sẻ bài viết này qua Facebook">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://twitter.com/share?url=https://ts.hust.edu.vn/tin-tuc/gioi-thieu-ve-ky-thi-danh-gia-tu-duy-tsa" class="twitter" target="_blank" title="Chia sẻ bài viết này qua Twitter">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="txt">Chia sẻ</li>
                            </ul>
                        </div>
                        
                    </div>
    </body>
    </html>
    ''';

    _controller.loadHtmlString(htmlContent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _loadHtmlContent();
            },
          ),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
