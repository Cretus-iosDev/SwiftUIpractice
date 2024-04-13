import SwiftUI
import MapKit

struct uicView9: View {
    //MARK: How to show a Map view
    @State private var region = MKCoordinateRegion(
        center:
            CLLocationCoordinate2D(
                latitude: 51.507222,
                longitude:
                    -0.1275
            ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.5,
            longitudeDelta: 0.5
        )
    )
    
   
    
    
    var body: some View {
//        Map(coordinateRegion: .constant(MKCoordinateRegion(center:
//        CLLocationCoordinate2D(latitude: 51.507222, longitude:
//        -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5,
//        longitudeDelta: 0.5))), interactionModes: [])
//           .frame(width: 400, height: 300)
        
        Map(coordinateRegion: $region, showsUserLocation: true,
        userTrackingMode: .constant(.follow))
                 .frame(width: 400, height: 300)
        
       
    }
}

#Preview {
    uicView9()
}
