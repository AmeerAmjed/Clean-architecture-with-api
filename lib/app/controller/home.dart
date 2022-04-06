import 'package:api/base/model/post.dart';
import 'package:api/base/model/user.dart';
import 'package:api/base/service/post.dart';
import 'package:api/base/service/user.dart';
import 'package:api/core/controller.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends Controller {
  RxBool busy = RxBool(true);
  PostService postService = PostService();
  UserService userService = UserService();
  RxList<Post> posts = RxList();

  @override
  void onInit() {
    super.onInit();
    postService.findAll().then((List<Post>? post) {
      if (post != null) {
        for (var i in post) {
          userService.find(i.userId.toString()).then((user) {
            i.user = user;
            posts.add(i);
          });
        }
        posts.refresh();
      }
      busy.value = false;
    });
  }
}
