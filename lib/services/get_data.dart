import '../models/job_model.dart';

class GetData {
  List<JobModel> getJobDetails() {
    List<JobModel> jobs = [
      JobModel(
          title: "Senior UX Designer",
          type: "Full Time",
          salary: "LKR 90000",
          companyName: "Tik Tok",
          logo:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk736TCB54wrZoJpy3uwOJpTq09o4a4nFH_ebN8oNJqg&s",
          city: "Colombo",
          time: "7 Days Left"),
      JobModel(
          title: "Senior UI Designer",
          // type: "Full Time",
          salary: "LKR 80000",
          companyName: "Uber",
          logo:
              "https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/743/cached.offlinehbpl.hbpl.co.uk/news/OMC/Uberlogo-20180925091408171.jpg",
          city: "Colombo",
          time: "7 Days Left"),
      JobModel(
          title: "Graphic Designer",
          type: "Part Time",
          salary: "LKR 40000",
          companyName: "Apple",
          logo:
              "https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F8ed3d547-94ff-48e1-9f20-8c14a7030a02_2000x2000.jpeg",
          city: "Colombo",
          time: "7 Days Left"),
      JobModel(
          title: "Web Developer",
          // type: "Full Time",
          salary: "LKR 80000",
          companyName: "Wso2",
          logo:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-33nTIjvk_Mmhnolp2qFJq3d1Bpcqfk9XiX3j-Kv2tg&s",
          city: "Colombo",
          time: "7 Days Left"),
    ];

    return jobs;
  }
}
