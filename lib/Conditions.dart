import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'HRM/constants.dart';
import 'HomePage/HomePage.dart';
import 'Prediction/Description.dart';

class Conditions extends StatelessWidget {
  const Conditions({Key? key}) : super(key: key);

  static Map<String, String> description = {
    "Drug Reaction":"An adverse drug reaction (ADR) is an injury caused by taking medication. ADRs may occur following a single dose or prolonged administration of a drug or result from the combination of two or more drugs.",
    "Malaria":"An infectious disease caused by protozoan parasites from the Plasmodium family that can be transmitted by the bite of the Anopheles mosquito or by a contaminated needle or transfusion. Falciparum malaria is the most deadly type.",
    "Allergy":"An allergy is an immune system response to a foreign substance that's not typically harmful to your body.They can include certain foods, pollen, or pet dander. Your immune system's job is to keep you healthy by fighting harmful pathogens.",
    "Hypothyroidism":"Hypothyroidism, also called underactive thyroid or low thyroid, is a disorder of the endocrine system in which the thyroid gland does not produce enough thyroid hormone.",
    "Psoriasis":"Psoriasis is a common skin disorder that forms thick, red, bumpy patches covered with silvery scales. They can pop up anywhere, but most appear on the scalp, elbows, knees, and lower back. Psoriasis can't be passed from person to person. It does sometimes happen in members of the same family.",
    "GERD":"Gastroesophageal reflux disease, or GERD, is a digestive disorder that affects the lower esophageal sphincter (LES), the ring of muscle between the esophagus and stomach. Many people, including pregnant women, suffer from heartburn or acid indigestion caused by GERD.",
    "Chronic cholestasis":"Chronic cholestatic diseases, whether occurring in infancy, childhood or adulthood, are characterized by defective bile acid transport from the liver to the intestine, which is caused by primary damage to the biliary epithelium in most cases",
    "hepatitis A":"Hepatitis A is a highly contagious liver infection caused by the hepatitis A virus. The virus is one of several types of hepatitis viruses that cause inflammation and affect your liver's ability to function.",
    "Osteoarthristis":"Osteoarthritis is the most common form of arthritis, affecting millions of people worldwide. It occurs when the protective cartilage that cushions the ends of your bones wears down over time.",
    "(vertigo) Paroymsal  Positional Vertigo":"Benign paroxysmal positional vertigo (BPPV) is one of the most common causes of vertigo â€” the sudden sensation that you're spinning or that the inside of your head is spinning. Benign paroxysmal positional vertigo causes brief episodes of mild to intense dizziness.",
    "Hypoglycemia":" Hypoglycemia is a condition in which your blood sugar (glucose) level is lower than normal. Glucose is your body's main energy source. Hypoglycemia is often related to diabetes treatment. But other drugs and a variety of conditions \” many rare \” can cause low blood sugar in people who don't have diabetes.",
    "Acne":"Acne vulgaris is the formation of comedones, papules, pustules, nodules, and/or cysts as a result of obstruction and inflammation of pilosebaceous units (hair follicles and their accompanying sebaceous gland). Acne develops on the face and upper trunk. It most often affects adolescents.",
    "Diabetes ":"Diabetes is a disease that occurs when your blood glucose, also called blood sugar, is too high. Blood glucose is your main source of energy and comes from the food you eat. Insulin, a hormone made by the pancreas, helps glucose from food get into your cells to be used for energy.",
    "Impetigo":"Impetigo (im-puh-TIE-go) is a common and highly contagious skin infection that mainly affects infants and children. Impetigo usually appears as red sores on the face, especially around a child's nose and mouth, and on hands and feet. The sores burst and develop honey-colored crusts.",
    "Hypertension ":"Hypertension (HTN or HT), also known as high blood pressure (HBP), is a long-term medical condition in which the blood pressure in the arteries is persistently elevated. High blood pressure typically does not cause symptoms.",
    "Peptic ulcer diseae":"Peptic ulcer disease (PUD) is a break in the inner lining of the stomach, the first part of the small intestine, or sometimes the lower esophagus. An ulcer in the stomach is called a gastric ulcer, while one in the first part of the intestines is a duodenal ulcer.",
    "Dimorphic hemmorhoids(piles)":"Hemorrhoids, also spelled haemorrhoids, are vascular structures in the anal canal. In their ... Other names, Haemorrhoids, piles, hemorrhoidal disease .",
    "Common Cold":"The common cold is a viral infection of your nose and throat (upper respiratory tract). It's usually harmless, although it might not feel that way. Many types of viruses can cause a common cold.",
    "Chicken pox":"Chickenpox is a highly contagious disease caused by the varicella-zoster virus (VZV). It can cause an itchy, blister-like rash. The rash first appears on the chest, back, and face, and then spreads over the entire body, causing between 250 and 500 itchy blisters.",
    "Cervical spondylosis":"Cervical spondylosis is a general term for age-related wear and tear affecting the spinal disks in your neck. As the disks dehydrate and shrink, signs of osteoarthritis develop, including bony projections along the edges of bones (bone spurs).",
    "Hyperthyroidism":"Hyperthyroidism (overactive thyroid) occurs when your thyroid gland produces too much of the hormone thyroxine. Hyperthyroidism can accelerate your body's metabolism, causing unintentional weight loss and a rapid or irregular heartbeat.",
    "Urinary tract infection":"Urinary tract infection: An infection of the kidney, ureter, bladder, or urethra. Abbreviated UTI. Not everyone with a UTI has symptoms, but common symptoms include a frequent urge to urinate and pain or burning when urinating.",
    "Varicose veins":"A vein that has enlarged and twisted, often appearing as a bulging, blue blood vessel that is clearly visible through the skin. Varicose veins are most common in older adults, particularly women, and occur especially on the legs.",
    "AIDS":"Acquired immunodeficiency syndrome (AIDS) is a chronic, potentially life-threatening condition caused by the human immunodeficiency virus (HIV). By damaging your immune system, HIV interferes with your body's ability to fight infection and disease.",
    "Paralysis (brain hemorrhage)":"Intracerebral hemorrhage (ICH) is when blood suddenly bursts into brain tissue, causing damage to your brain. Symptoms usually appear suddenly during ICH. They include headache, weakness, confusion, and paralysis, particularly on one side of your body.",
    "Typhoid":"An acute illness characterized by fever caused by infection with the bacterium Salmonella typhi. Typhoid fever has an insidious onset, with fever, headache, constipation, malaise, chills, and muscle pain. Diarrhea is uncommon, and vomiting is not usually severe.",
    "Hepatitis B":"Hepatitis B is an infection of your liver. It can cause scarring of the organ, liver failure, and cancer. It can be fatal if it isn't treated. It's spread when people come in contact with the blood, open sores, or body fluids of someone who has the hepatitis B virus.",
    "Fungal infection":"In humans, fungal infections occur when an invading fungus takes over an area of the body and is too much for the immune system to handle. Fungi can live in the air, soil, water, and plants. There are also some fungi that live naturally in the human body. Like many microbes, there are helpful fungi and harmful fungi.",
    "Hepatitis C":"Inflammation of the liver due to the hepatitis C virus (HCV), which is usually spread via blood transfusion (rare), hemodialysis, and needle sticks. The damage hepatitis C does to the liver can lead to cirrhosis and its complications as well as cancer.",
    "Migraine":"A migraine can cause severe throbbing pain or a pulsing sensation, usually on one side of the head. It's often accompanied by nausea, vomiting, and extreme sensitivity to light and sound. Migraine attacks can last for hours to days, and the pain can be so severe that it interferes with your daily activities.",
    "Bronchial Asthma":"Bronchial asthma is a medical condition which causes the airway path of the lungs to swell and narrow. Due to this swelling, the air path produces excess mucus making it hard to breathe, which results in coughing, short breath, and wheezing. The disease is chronic and interferes with daily working.",
    "Alcoholic hepatitis":"Alcoholic hepatitis is a diseased, inflammatory condition of the liver caused by heavy alcohol consumption over an extended period of time. It's also aggravated by binge drinking and ongoing alcohol use. If you develop this condition, you must stop drinking alcohol",
    "Jaundice":"Yellow staining of the skin and sclerae (the whites of the eyes) by abnormally high blood levels of the bile pigment bilirubin. The yellowing extends to other tissues and body fluids. Jaundice was once called the \"morbus regius\" (the regal disease) in the belief that only the touch of a king could cure it",
    "Hepatitis E":"A rare form of liver inflammation caused by infection with the hepatitis E virus (HEV). It is transmitted via food or drink handled by an infected person or through infected water supplies in areas where fecal matter may get into the water. Hepatitis E does not cause chronic liver disease.",
    "Dengue":"an acute infectious disease caused by a flavivirus (species Dengue virus of the genus Flavivirus), transmitted by aedes mosquitoes, and characterized by headache, severe joint pain, and a rash. â€” called also breakbone fever, dengue fever.",
    "Hepatitis D":"Hepatitis D, also known as the hepatitis delta virus, is an infection that causes the liver to become inflamed. This swelling can impair liver function and cause long-term liver problems, including liver scarring and cancer. The condition is caused by the hepatitis D virus (HDV).",
    "Heart attack":"The death of heart muscle due to the loss of blood supply. The loss of blood supply is usually caused by a complete blockage of a coronary artery, one of the arteries that supplies blood to the heart muscle.",
    "Pneumonia":"Pneumonia is an infection in one or both lungs. Bacteria, viruses, and fungi cause it. The infection causes inflammation in the air sacs in your lungs, which are called alveoli. The alveoli fill with fluid or pus, making it difficult to breathe.",
    "Arthritis":"Arthritis is the swelling and tenderness of one or more of your joints. The main symptoms of arthritis are joint pain and stiffness, which typically worsen with age. The most common types of arthritis are osteoarthritis and rheumatoid arthritis.",
    "Gastroenteritis":"Gastroenteritis is an inflammation of the digestive tract, particularly the stomach, and large and small intestines. Viral and bacterial gastroenteritis are intestinal infections associated with symptoms of diarrhea , abdominal cramps, nausea , and vomiting .",
    "Tuberculosis":"Tuberculosis (TB) is an infectious disease usually caused by Mycobacterium tuberculosis (MTB) bacteria. Tuberculosis generally affects the lungs, but can also affect other parts of the body. Most infections show no symptoms, in which case it is known as latent tuberculosis."
  };
  static Map<String, String> precautions = {
    "Drug Reaction":"Stop irritation, stop taking any drugs and consult nearest hospital.",
    "Malaria":"Avoid oily food and keep mosquitos out.",
    "Allergy":"Apply calamine, cover the area with bandages and use ice to compress itching.",
    "Hypothyroidism":"Reduce any stress, exercise more, cat healthy food and get more sleep.",
    "Psoriasis":"wash your hands with warm soapy water, salt baths, stop the bleeding using pressure and consult a doctor.",
    "GERD":"avoid spicy food, avoid lying down after eating, try to maintain a healthy weight and exercise more.",
    "Chronic cholestasis":"Take cold baths, take some anti itch medicine and eat healthy food.",
    "hepatitis A":"Avoid spicy food, wash your hands more often and consult the nearest hospital.",
    "Osteoarthristis":"Take some acetaminophen, take salt baths and consult the nearest hospital.",
    "(vertigo) Paroymsal  Positional Vertigo":"Lie down, avoid any sudden changes in your body, avoid abrupt head movement and relax.",
    "Hypoglycemia":"Lie down on your side, check your pulse, drink sugary drinks and consult a doctor.",
    "Acne":"Bath more, avoid spicy food, drink plenty of water and avoid applying too many products.",
    "Diabetes ":"Have balanced diet, exercise more and consult a doctor.",
    "Impetigo":"Soak affected area with warm water, use antibiotics, remove scabs with wet compressed cloth and consult a doctor.",
    "Hypertension ":"Take a salt baths, reduce any stress, try to meditate and get proper sleep.",
    "Peptic ulcer diseae":"Avoid spicy food, consume probiotic food, eliminate milk and alcohol.",
    "Dimorphic hemmorhoids(piles)":"Avoid spicy food, consume witch hazel, take a warm bath with epsom salt and consume alovera juice.",
    "Common Cold":"Drink vitamin C rich drinks, take vapour, avoid cold food and check your temperature constantly.",
    "Chicken pox":"Use neem in bathing, consume neem leaves, take vaccine and avoid public places.",
    "Cervical spondylosis":"Use heating pad or cold pack, take otc pain reliver and exercise more.",
    "Hyperthyroidism":"Eat healthy food, use lemon balm and take radioactive iodine treatment.",
    "Urinary tract infection":"Drink plenty of water, increase vitamin C intake, drink cranberry juice and take probiotics.",
    "Varicose veins":"Lie down flat and raise the leg high, use ointments, use vein compression and don't stand still for long.",
    "AIDS":"Wear a condom, avoid open cuts and consult a doctor.",
    "Paralysis (brain hemorrhage)":"Eat healthy food, exercise more and consult a doctor.",
    "Typhoid":"Eat high calorie vegetables, get a vaccine and consult the nearest hospital.",
    "Hepatitis B":"Eat healthy food, get a vaccine, take medication and consult a doctor.",
    "Fungal infection":"Take more baths, use detol or neem in the bathing water, keep the infected area dry and use clean cloths.",
    "Hepatitis C":"Eat healthy food, get a vaccine, take medication and consult a doctor.",
    "Migraine":"Use polaroid sunglasses, reduce any stress and meditate.",
    "Bronchial Asthma":"Switch to loose clothing, take deep breaths, get away from triggers and seek help.",
    "Alcoholic hepatitis":"Take medication, stop consuming alcohol and consult a doctor.",
    "Jaundice":"Drink plenty of water, consume milk thistle, eat fruits and high fibrous food.",
    "Hepatitis E":"Stop alcohol, take medication and consult a doctor.",
    "Dengue":"Drink papaya leaf juice, avoid spicy food, keep mosquitos away and stay hydrated",
    "Hepatitis D":"Eat healthy food, take medication and consult a doctor.",
    "Heart attack":"Call an ambulance, chew or swallow aspirin and try to keep calm.",
    "Pneumonia":"Eat healthy food, get some rest, take medication and consult a doctor.",
    "Arthritis":"Use hot and cold therapy, try acupuncture therapy or book massage sessions and exercise more.",
    "Gastroenteritis":"Stop eating solid food for while, try taking small sips of water, ease back into eating and get some rest.",
    "Tuberculosis":"Cover your mouth, take a medication, try to take some rest and consult a doctor."
  };


  @override
  Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  LineAwesomeIcons.angle_left,
                  size: 35,
                ),
                color: Colors.white,
              ),
              title:  Text('Conditions', style: appText(
                  color: Colors.white,
                  isShadow: false,
                  weight: FontWeight.bold,
                  size: 20)),
              centerTitle: true,
              backgroundColor: Colors.indigo.shade400,
            ),
            body: ListView.builder(
              itemCount: description.length,
              itemBuilder: (context, index) {
                final symptomName = description.keys.elementAt(index);
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(11),
                    child: ListTile(
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/Diagnosis',
                            arguments: {
                              'diagnosis': symptomName,
                            },
                          );                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                        ),
                        color: Colors.black38,
                      ),
                      title: Text(
                        symptomName + "\n",
                          style: appText(
                              color: Colors.black,
                              isShadow: false,
                              weight: FontWeight.w600,
                              size: 20)),
                    ),
                  ),
                );
              },
            ),
          );
  }
}

