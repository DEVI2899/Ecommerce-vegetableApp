
import '../Models/ProductItem.dart';

class MockUtil {

  static List getBanners() {
    return [
      "https://as2.ftcdn.net/v2/jpg/05/83/90/71/1000_F_583907151_EtIdDZDW0l7qapdl5xtyhkCFl6uAHJ8l.jpg",
      "https://as2.ftcdn.net/v2/jpg/00/78/20/41/1000_F_78204101_8bUJXWrWJ9MjLyct3SXGhAvIKG0ai5wg.jpg",
      "https://as1.ftcdn.net/v2/jpg/05/91/11/02/1000_F_591110201_OAfRGuL3m4EqQywQhYRzImGFwR2ac1hu.jpg",
    ];
  }

  static List<ProductItem> getTrendingItems() {
    return [
      ProductItem(
          id: 1,
          rating: 4.5,
          name: "Cabbages",
          imageUrl:
          "https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/1502591/cabbage-clipart-md.png",
          currency: 9.9,
          currencyType: "\$",
          sellingUnit: "per piece",
          discount: 10,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",
          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]

      ),
      ProductItem(
          id: 2,
          name: "Tomatoes",
          imageUrl: "https://pngimg.com/uploads/tomato/tomato_PNG12594.png",
          currency: 7.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 10,
          rating: 4,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
          id :3,
          name: "Potatoes",
          imageUrl: "https://pngimg.com/uploads/potato/potato_png2398.png",
          currency: 9.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 10,
          rating: 3,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
         id: 4,
          name: "Carrots",
          imageUrl:
          "https://pngimg.com/uploads/carrot/carrot_PNG4970.png",
          currency: 19.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 10,
          rating: 4,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
    ];
  }

  static List<ProductItem> getFeaturedItems() {
    return [
      ProductItem(
        id: 5,
          name: "Strawberries",
          imageUrl:
          "https://pngimg.com/uploads/strawberry/strawberry_PNG2630.png",
          currency: 9.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 10,
          rating: 4,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
           id :6,
          name: "Banana",
          imageUrl: "https://pngimg.com/uploads/banana/banana_PNG814.png",
          currency: 7.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 10,
          rating: 4.5,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
          id:7,
          name: "blackberry",
          imageUrl: "https://pngimg.com/uploads/blackberry/blackberry_PNG47.png",
          currency: 7.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 12,
          rating: 3,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
          id: 8,
          name: "Pineapple",
          imageUrl: "https://www.freepnglogos.com/uploads/pineapple-png/pineapple-transparent-png-clip-art-image-gallery-24.png",
          currency: 7,
          currencyType: "\$",
          sellingUnit: "per piece",
          discount: 5,
          rating: 2,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      )
    ];
  }

  static List<ProductItem> getTopSellingItems() {
    return [
      ProductItem(
          id:9,
          name: "Peas",
          imageUrl: "http://pngimg.com/uploads/pea/small/pea_PNG24285.png",
          currency: 17.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 7,
          rating: 4.5,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
          id: 10,
          name: "cucumber",
          imageUrl: "https://pngimg.com/uploads/cucumber/cucumber_PNG84286.png",
          currency: 7.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 12,
          rating: 4.5,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
         id: 11,
          name: "Corn",
          imageUrl:
          "https://pngimg.com/uploads/corn/corn_PNG5272.png",
          currency: 49.9,
          currencyType: "\$",
          sellingUnit: "per kg",
          discount: 15,
          rating: 4.5,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      ),
      ProductItem(
          id :12,
          name: "Spinach",
          imageUrl: "https://pngimg.com/uploads/spinach/spinach_PNG11.png",
          currency: 7,
          currencyType: "\$",
          sellingUnit: "per piece",
          discount: 5,
          rating: 4.5,
          description:
          "Cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage (B. oleracea var. oleracea), and belongs to the \"cole crops\" or brassicas, meaning it is closely related to broccoli and cauliflower (var. botrytis); Brussels sprouts (var. gemmifera); and Savoy cabbage (var. sabauda).",

          benefits: [
            "Cabbage Is Packed With Nutrients.",
            "It May Help Keep Inflammation in Check. Inflammation isn’t always a bad thing. In fact, your body relies on the inflammatory response to protect against infection or speed up healing. This kind of acute inflammation is a normal response to an injury or infection.",
            "Cabbage Is Packed With Vitamin C.",
            "It Helps Improve Digestion. Cabbage contains insoluble fiber, which keeps the digestive system healthy by providing fuel for friendly bacteria and promoting regular bowel movements.",
            "Cabbage contains powerful pigments called anthocyanins, which have been shown to reduce the risk of heart disease.",
            "Potassium helps keep blood pressure within a healthy range. Increasing your intake of potassium-rich foods like cabbage may help lower high blood pressure levels.",
            "Cabbage is a good source of soluble fiber and plant sterols. These substances have been shown to reduce LDL cholesterol."
          ]
      )
    ];
  }
}