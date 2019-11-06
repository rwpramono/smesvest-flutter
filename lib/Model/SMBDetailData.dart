class SMBDetailData {
  String title;
  String rating;
  String avaImage;
  String storeImage;
  String description;
  String fundingProgress;

  SMBDetailData({
    this.title,
    this.rating,
    this.avaImage,
    this.storeImage,
    this.description,
    this.fundingProgress
  });

  static List<SMBDetailData> smbList = [
    SMBDetailData(
      title: "910 ninetenshoes",
      rating: "2.1",
      storeImage: "",
      description: "Lorem ipsum is simply dummy text of printing & typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry.",
      fundingProgress: "17%",
      avaImage: 'https://s1.bukalapak.com/pavilion/logos/6016/medium/LOGO.jpeg',
    ),
    SMBDetailData(
      title: "Allocacoc",
      rating: "5.0",
      storeImage: "",
      description: "Lorem ipsum is simply dummy text of printing & typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry.",
      fundingProgress: "85%",
      avaImage: 'https://s4.bukalapak.com/uploads/logos/4244/medium/Logo_jpg.jpg',
    ),
    SMBDetailData(
      title: "Allumia",
      rating: "2.1",
      storeImage: "",
      description: "Lorem ipsum is simply dummy text of printing & typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry.",
      fundingProgress: "14%",
      avaImage: 'https://s3.bukalapak.com/pavilion/logos/3046/medium/Allumia.jpg',
    ),
    SMBDetailData(
      title: "Amalia Cosmetics",
      rating: "4.1",
      storeImage: "",
      description: "Lorem ipsum is simply dummy text of printing & typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry.",
      fundingProgress: "17%",
      avaImage: 'https://s4.bukalapak.com/pavilion/logos/9261/medium/amalia-logo-80x80-pxl.jpg',
    ),
    SMBDetailData(
      title: "Plattan 2",
      rating: "3.1",
      storeImage: "",
      description: "Lorem ipsum is simply dummy text of printing & typesetting industry, Lorem ipsum is simply dummy text of printing & typesetting industry.",
      fundingProgress: "67%",
      avaImage: 'https://s3.bukalapak.com/pavilion/logos/3912/medium/AR_Signature_Logo_2500.jpg',
    )
  ];
}