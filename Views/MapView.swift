import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let mapView = MKMapView()

    func makeUIView(context: Context) -> MKMapView {
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {}
}

