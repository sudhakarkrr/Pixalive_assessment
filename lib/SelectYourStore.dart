import 'package:flutter/material.dart';


class SelectStoreScreen extends StatefulWidget {
  @override
  _SelectStoreScreenState createState() => _SelectStoreScreenState();
}

class _SelectStoreScreenState extends State<SelectStoreScreen> {
  int? selectedStoreIndex;

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> stores = [
      {
        'name': 'Annapoorna Hotel',
        'location': 'Sitra, Coimbatore',
        'id': '12345',
        'image':"images/Storeimage.jpg"
      },
      {
        'name': 'Annapoorna Hotel',
        'location': 'L&T, Coimbatore',
        'id': '22345',
        'image':"images/Storeimage.jpg"

      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Arrow
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  // Handle back navigation
                },
              ),
              SizedBox(height: 10),
              // Title
              Text(
                'Select Your Store',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              // Subtitle
              Text(
                'Your Number is connected with 2 stores',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              // Store List
              Expanded(
                child: ListView.builder(
                  itemCount: stores.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedStoreIndex = index;
                        });
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(8.0),
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(stores[index]['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(
                            stores[index]['name']!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(stores[index]['location']!),
                              Text(
                                'Store ID: ${stores[index]['id']}',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          trailing: Radio(
                            value: index,
                            groupValue: selectedStoreIndex,
                            onChanged: (value) {
                              setState(() {
                                selectedStoreIndex = value as int?;
                              });
                            },
                            activeColor: Colors.green,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // Continue Button
              ElevatedButton(
                onPressed: selectedStoreIndex != null
                    ? () {
                  // Handle continue action
                }
                    : null, // Disable button if no store is selected
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
