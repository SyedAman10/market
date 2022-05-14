class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<Job> generateJobs() {
    return [
      Job(
          'Reboost',
          './../../assets/images/avatar.png',
          true,
          'Web Developer',
          'Lebanon',
          '2 days',
          ['I want my website to be build by a professional individual']),
      Job(
          'Reboost',
          './../../assets/images/avatar.png',
          true,
          'Web Developer',
          'Lebanon',
          '2 days',
          ['I want my website to be build by a professional individual']),
      Job(
          'Reboost',
          './../../assets/images/avatar.png',
          true,
          'Web Developer',
          'Lebanon',
          '2 days',
          ['I want my website to be build by a professional individual']),
    ];
  }
}
