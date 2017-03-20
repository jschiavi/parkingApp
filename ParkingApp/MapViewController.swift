//
//  MapViewController.swift
//  ParkingApp
//
//  Created by Joey Schiavi on 3/15/17.
//  Copyright © 2017 Park@UF. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    
    var mapView: GMSMapView!
    
    var searchResults: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if searchResults.isEmpty {
            searchResults = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        }
        
        //*************  Student Parking  ********************
        //Green
        if searchResults[0] == 1 {
            addGreenMarkers()
            addStaffCommuterMarkers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //Park & Ride
        if searchResults[1] == 1 {
            addAnyDecalMarkers()
        }
        //Red 1
        if searchResults[2] == 1 {
            addRed1Markers()
            addRed3Markers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //Red 3
        if searchResults[3] == 1 {
            addRed3Markers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //Brown 2
        if searchResults[4] == 1 {
            addBrown2Markers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //Brown 3
        if searchResults[5] == 1 {
            addBrown3Markers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //************ Faculty Parking **********************
        //Orange
        if searchResults[6] == 1 {
            addOrangeMarkers()
            addGreenMarkers()
            addStaffCommuterMarkers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //Blue
        if searchResults[7] == 1 {
            addBlueMarkers()
            addGreenMarkers()
            addStaffCommuterMarkers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //Medical Resident
        if searchResults[8] == 1 {
            addMedicalResidentMarkers()
            addOrangeMarkers()
            addGreenMarkers()
            addStaffCommuterMarkers()
            addRed1Markers()
            addBrown2Markers()
            addBrown3Markers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //UF Health South
        if searchResults[9] == 1 {
            addUFHealthSouthMarkers()
        }
        //Staff Commuter
        if searchResults[10] == 1 {
            addStaffCommuterMarkers()
            addAnyDecalMarkers()
            addAnyDecalExceptPnRMarkers()
        }
        //************** Other Parking **********************
        //Gated
        if searchResults[11] == 1 {
            addGatedMarkers()
        }
        //Disabled
        if searchResults[12] == 1 {
            //addDisabledMarkers()
        }
        //Motorcycle/Scooter
        if searchResults[13] == 1 {
            //addMotoScooterMarkers()
        }
    }
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 29.644472, longitude: -82.354866, zoom: 13.0)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        self.view = mapView
    }
    
    //***************************** Student Markers ****************************
    
    func addAnyDecalMarkers() {
        let anyDecalColor = UIColor(red: 0xff/0xff, green: 0xe6/0xff, blue: 0xb3/0xff, alpha: 0xff/0xff)
        
        //Park & Ride 2
        let pnrLot2Location = CLLocationCoordinate2DMake(29.637877, -82.377052)
        let pnrLot2Marker = GMSMarker(position: pnrLot2Location)
        
        //marker properties
        pnrLot2Marker.icon = GMSMarker.markerImage(with: anyDecalColor)
        pnrLot2Marker.title = "Park & Ride Lot 2"
        pnrLot2Marker.snippet = "Any Decal"
        pnrLot2Marker.map = mapView
        
        //Harn Museum of Art
        let harnMuseumLocation = CLLocationCoordinate2DMake(29.637058, -82.370142)
        let harnMuseumMarker = GMSMarker(position: harnMuseumLocation)
        
        //marker properties
        harnMuseumMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        harnMuseumMarker.title = "Harn Museum of Art"
        harnMuseumMarker.snippet = "Any Decal"
        harnMuseumMarker.map = mapView
        
        //Park & Ride 1
        let pnrLot1Location = CLLocationCoordinate2DMake(29.637263, -82.368860)
        let pnrLot1Marker = GMSMarker(position: pnrLot1Location)
        
        //marker properties
        pnrLot1Marker.icon = GMSMarker.markerImage(with: anyDecalColor)
        pnrLot1Marker.title = "Park & Ride Lot 1"
        pnrLot1Marker.snippet = "Any Decal"
        pnrLot1Marker.map = mapView
        
        //University Village Field Lot
        let universityFieldLotLocation = CLLocationCoordinate2DMake(29.639590, -82.369842)
        let universityFieldMarker = GMSMarker(position: universityFieldLotLocation)
        
        //marker properties
        universityFieldMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        universityFieldMarker.title = "University Village Field Lot"
        universityFieldMarker.snippet = "Any Decal"
        universityFieldMarker.map = mapView
        
        //Softball Fields Lot
        let softballLotLocation = CLLocationCoordinate2DMake(29.640386, -82.368973)
        let softballLotMarker = GMSMarker(position: softballLotLocation)
        
        //marker properties
        softballLotMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        softballLotMarker.title = "Softball Fields Lot"
        softballLotMarker.snippet = "Any Decal"
        softballLotMarker.map = mapView
        
        //Parking Garage XI
        let garageXILocation = CLLocationCoordinate2DMake(29.636327, -82.368426)
        let garageXIMarker = GMSMarker(position: garageXILocation)
        
        //marker properties
        garageXIMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        garageXIMarker.title = "Parking Garage XI"
        garageXIMarker.snippet = "Any Decal"
        garageXIMarker.map = mapView
        
        //Lacrosse Complex
        let lacrosseComplexLocation = CLLocationCoordinate2DMake(29.636874, -82.366489)
        let lacrosseComplexMarker = GMSMarker(position: lacrosseComplexLocation)
        
        //marker propeties
        lacrosseComplexMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        lacrosseComplexMarker.title = "Lacrosse Complex"
        lacrosseComplexMarker.snippet = "Any Decal"
        lacrosseComplexMarker.map = mapView
        
        //Entomology/Nematology
        let entNemLocation = CLLocationCoordinate2DMake(29.634616, -82.366494)
        let entNemMarker = GMSMarker(position: entNemLocation)
        
        //marker properties
        entNemMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        entNemMarker.title = "Entomolgy and Nematology Department"
        entNemMarker.snippet = "Any Decal"
        entNemMarker.map = mapView
        
        //Surge Area
        let surgeAreaLocation = CLLocationCoordinate2DMake(29.631491, -82.367282)
        let surgeAreaMarker = GMSMarker(position: surgeAreaLocation)
        
        //marker properties
        surgeAreaMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        surgeAreaMarker.title = "Surge Area"
        surgeAreaMarker.snippet = "Any Decal"
        surgeAreaMarker.map = mapView
        
        //Wallace Building
        let wallaceBuildingLocation = CLLocationCoordinate2DMake(29.638375, -82.359013)
        let wallaceBuildingMarker = GMSMarker(position: wallaceBuildingLocation)
        
        //marker properties
        wallaceBuildingMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        wallaceBuildingMarker.title = "Wallace Building"
        wallaceBuildingMarker.snippet = "Any Decal"
        wallaceBuildingMarker.map = mapView
        
        //Mehrhof Complex
        let mehrhofComplexLocation = CLLocationCoordinate2DMake(29.633897, -82.361105)
        let mehrhofComplexMarker = GMSMarker(position: mehrhofComplexLocation)
        
        //marker properties
        mehrhofComplexMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        mehrhofComplexMarker.title = "Mehrhof Complex"
        mehrhofComplexMarker.snippet = "Any Decal"
        mehrhofComplexMarker.map = mapView
        
        //Swine Barn Unit
        let swineBarnLocation = CLLocationCoordinate2DMake(29.630557, -82.360373)
        let swineBarnMarker = GMSMarker(position: swineBarnLocation)
        
        //marker properties
        swineBarnMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        swineBarnMarker.title = "Swine Barn Unit"
        swineBarnMarker.snippet = "Any Decal"
        swineBarnMarker.map = mapView
        
        //Energy Research & Education Park
        let energyParkLocation = CLLocationCoordinate2DMake(29.627815, -82.360830)
        let energyParkMarker = GMSMarker(position: energyParkLocation)
        
        //marker properties
        energyParkMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        energyParkMarker.title = "Energy Research & Education Park"
        energyParkMarker.snippet = "Any Decal"
        energyParkMarker.map = mapView
        
        //Shealy Drive Lot
        let shealyLotLocation = CLLocationCoordinate2DMake(29.635474, -82.351939)
        let shealyLotMarker = GMSMarker(position: shealyLotLocation)
        
        //marker properties
        shealyLotMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        shealyLotMarker.title = "Shealy Drive Lot"
        shealyLotMarker.snippet = "Any Decal"
        shealyLotMarker.map = mapView
        
        //Laboratory Research Building
        let labBuildingLocation = CLLocationCoordinate2DMake(29.633745, -82.3555623)
        let labBuildingMarker = GMSMarker(position: labBuildingLocation)
        
        //marker properties
        labBuildingMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        labBuildingMarker.title = "Laboratory Research Building"
        labBuildingMarker.snippet = "Any Decal"
        labBuildingMarker.map = mapView
        
        //Veterinary Medicine West Lot
        let vetMedWestLocation = CLLocationCoordinate2DMake(29.634317, -82.351646)
        let vetMedWestMarker = GMSMarker(position: vetMedWestLocation)
        
        //marker properties
        vetMedWestMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        vetMedWestMarker.title = "Veterinary Medicine West Lot"
        vetMedWestMarker.snippet = "Any Decal"
        vetMedWestMarker.map = mapView
        
        //Animal Sciences
        let animalSciencesLocation = CLLocationCoordinate2DMake(29.630898, -82.352079)
        let animalSciencesMarker = GMSMarker(position: animalSciencesLocation)
        
        //marker properties
        animalSciencesMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        animalSciencesMarker.title = "Animal Scienes Southwest Lot"
        animalSciencesMarker.snippet = "Any Decal"
        animalSciencesMarker.map = mapView
        
        //Ritchey Road
        let ritcheyRoadLocation = CLLocationCoordinate2DMake(29.630370, -82.354078)
        let ritcheyRoadMarker = GMSMarker(position: ritcheyRoadLocation)
        
        //marker properties
        ritcheyRoadMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        ritcheyRoadMarker.title = "Ritchey Road"
        ritcheyRoadMarker.snippet = "Any Decal"
        ritcheyRoadMarker.map = mapView
    }
    
    func addGreenMarkers() {
        //note: shares same parking area availability as Staff Commuter decal
        //      with the exception of Garage VII at the O'Connell Center
        //
        // Parking Garage VII - O'Connel Center
        let garageVIILocation = CLLocationCoordinate2DMake(29.650614, -82.351512)
        let garageVIIMarker = GMSMarker(position: garageVIILocation)
        
        //marker properties
        garageVIIMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        garageVIIMarker.title = "Parking Garage VII - O'Connell Center"
        garageVIIMarker.snippet = "Green"
        garageVIIMarker.map = mapView
    }
    
    func addRed1Markers() {
        //Pi Beta Phi
        let piBetaPhiLocation = CLLocationCoordinate2DMake(29.647287, -82.359497)
        let piBetaPhiMarker = GMSMarker(position: piBetaPhiLocation)
        
        //marker properties
        piBetaPhiMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        piBetaPhiMarker.title = "Pi Beta Phi at the University of Florida"
        piBetaPhiMarker.snippet = "Red 1"
        piBetaPhiMarker.map = mapView
        
        //Sigma Nu
        let sigmaNuLocation = CLLocationCoordinate2DMake(29.647333, -82.358356)
        let sigmaNuMarker = GMSMarker(position: sigmaNuLocation)
        
        //marker properties
        sigmaNuMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        sigmaNuMarker.title = "Sigma Nu"
        sigmaNuMarker.snippet = "Red 1"
        sigmaNuMarker.map = mapView
        
        //Spring Residential Complex
        let springsComplexLocation = CLLocationCoordinate2DMake(29.648869, -82.356920)
        let springsComplexMarker = GMSMarker(position: springsComplexLocation)
        
        //marker properties
        springsComplexMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        springsComplexMarker.title = "Springs Residential Complex"
        springsComplexMarker.snippet = "Red 1"
        springsComplexMarker.map = mapView
        
        
        //Keys Residential Complex
        let keysComplexLocation = CLLocationCoordinate2DMake(29.647781, -82.354093)
        let keysComplexMarker = GMSMarker(position: keysComplexLocation)
        
        //marker properties
        keysComplexMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        keysComplexMarker.title = "Keys Residential Complex"
        keysComplexMarker.snippet = "Red 1"
        keysComplexMarker.map = mapView
        
        //Flavet Field parking lot
        let flavetLotLocation = CLLocationCoordinate2DMake(29.645393, -82.353763)
        let flavetLotMarker = GMSMarker(position: flavetLotLocation)
        
        //marker properties
        flavetLotMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        flavetLotMarker.title = "Flavet Field Lot"
        flavetLotMarker.snippet = "Red 1"
        flavetLotMarker.map = mapView
        
        //Hume Hall parking lot
        let humeLotLocation = CLLocationCoordinate2DMake(29.644325, -82.351945)
        let humeLotMarker = GMSMarker(position: humeLotLocation)
        
        //marker properties
        humeLotMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        humeLotMarker.title = "Honors Residential College at Hume Hall"
        humeLotMarker.snippet = "Red 1"
        humeLotMarker.map = mapView
        
        //Fletcher Hall lot
        let fletcherLotLocation = CLLocationCoordinate2DMake(29.651525, -82.345192)
        let fletcherLotMarker = GMSMarker(position: fletcherLotLocation)
        
        //marker properties
        fletcherLotMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        fletcherLotMarker.title = "Fletcher Hall"
        fletcherLotMarker.snippet = "Red 1"
        fletcherLotMarker.map = mapView
        
        //Murphree Hall parking lots
        let murphreeLotLocation = CLLocationCoordinate2DMake(29.651240, -82.346560)
        let murphreeLotMarker = GMSMarker(position: murphreeLotLocation)
        
        //marker properties
        murphreeLotMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        murphreeLotMarker.title = "Murphree Hall"
        murphreeLotMarker.snippet = "Red 1"
        murphreeLotMarker.map = mapView
        
        //Jennings Hall parking lot
        let jenningsLotLocation = CLLocationCoordinate2DMake(29.644505, -82.341487)
        let jenningsLotMarker = GMSMarker(position: jenningsLotLocation)
        
        //marker properties
        jenningsLotMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        jenningsLotMarker.title = "Jennings Hall"
        jenningsLotMarker.snippet = "Red 1"
        jenningsLotMarker.map = mapView
        
        //Beaty Towers parking lot
        let beatyTowersLocation = CLLocationCoordinate2DMake(29.644085, -82.340746)
        let beatyTowersMarker = GMSMarker(position: beatyTowersLocation)
        
        //marker properties
        beatyTowersMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        beatyTowersMarker.title = "Beaty Towers"
        beatyTowersMarker.snippet = "Red 1"
        beatyTowersMarker.map = mapView
        
        //West Panhellenic Drive Lot
        let westPanhellenicLocation = CLLocationCoordinate2DMake(29.644306, -82.338478)
        let westPanhellenicMarker = GMSMarker(position: westPanhellenicLocation)
        
        //marker properties
        westPanhellenicMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        westPanhellenicMarker.title = "West Panhellenic Drive"
        westPanhellenicMarker.snippet = "Red 1"
        westPanhellenicMarker.map = mapView
        
        //East Panhellenic Drive lot
        let eastPanhellenicLocation = CLLocationCoordinate2DMake(29.644172, -82.336666)
        let eastPanhellenicMarker = GMSMarker(position: eastPanhellenicLocation)
        
        //marker properties
        eastPanhellenicMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        eastPanhellenicMarker.title = "East Panhellenic Drive"
        eastPanhellenicMarker.snippet = "Red 1"
        eastPanhellenicMarker.map = mapView
        
        //Parking Garage 8 - Norman
        let garageVIIILocation = CLLocationCoordinate2DMake(29.645503, -82.337394)
        let garageVIIIMarker = GMSMarker(position: garageVIIILocation)
        
        //marker properties
        garageVIIIMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        garageVIIIMarker.title = "Parking Garage VIII - Norman"
        garageVIIIMarker.snippet = "Red 1"
        garageVIIIMarker.map = mapView
    }
    
    func addRed3Markers() {
        //Maguire Village
        let maguireVillageLocation = CLLocationCoordinate2DMake(29.640986, -82.370680)
        let maguireVillageMarker = GMSMarker(position: maguireVillageLocation)
        
        //marker properties
        maguireVillageMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        maguireVillageMarker.title = "Maguire Village"
        maguireVillageMarker.snippet = "Red 3"
        maguireVillageMarker.map = mapView
        
        //Lakeside Residential Complex
        let lakesideComplexLocation = CLLocationCoordinate2DMake(29.641862, -82.365890)
        let lakesideMarker = GMSMarker(position: lakesideComplexLocation)
        
        //marker properties
        lakesideMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        lakesideMarker.title = "Lakeside Residential Complex"
        lakesideMarker.snippet = "Red 3"
        lakesideMarker.map = mapView
        
        //Beta Theta Pi
        let betaThetaPiLocation = CLLocationCoordinate2DMake(29.648189, -82.356351)
        let betaThetaPiMarker = GMSMarker(position: betaThetaPiLocation)
        
        //marker properties
        betaThetaPiMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        betaThetaPiMarker.title = "Beta Theta Pi"
        betaThetaPiMarker.snippet = "Red 3"
        betaThetaPiMarker.map = mapView
        
        //Fraternity Row
        let fraternityRowLocation = CLLocationCoordinate2DMake(29.646827, -82.357870)
        let fraternityRowMarker = GMSMarker(position: fraternityRowLocation)
        
        //marker properties
        fraternityRowMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        fraternityRowMarker.title = "Fraternity Row"
        fraternityRowMarker.snippet = "Red 3"
        fraternityRowMarker.map = mapView
        
        //James G. Pressly Stadium
        let presslyStadiumLocation = CLLocationCoordinate2DMake(29.649298, -82.354536)
        let presslyStadiumMarker = GMSMarker(position: presslyStadiumLocation)
        
        //marker properties
        presslyStadiumMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        presslyStadiumMarker.title = "James G. Pressly Stadium"
        presslyStadiumMarker.snippet = "Red 3"
        presslyStadiumMarker.map = mapView
        
        //North Woodlawn Drive Lot
        let woodlawnLocation = CLLocationCoordinate2DMake(29.647688, -82.355310)
        let woodlawnMarker = GMSMarker(position: woodlawnLocation)
        
        //marker properties
        woodlawnMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        woodlawnMarker.title = "Woodlawn Drive Lot"
        woodlawnMarker.snippet = "Red 3"
        woodlawnMarker.map = mapView
        
        //Fraternity Wetlands lot
        let fraternityWetlandsLocation = CLLocationCoordinate2DMake(29.646584, -82.355549)
        let fraternityWetlandsMarker = GMSMarker(position: fraternityWetlandsLocation)
        
        //marker properties
        fraternityWetlandsMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        fraternityWetlandsMarker.title = "Fraternity Wetlands"
        fraternityWetlandsMarker.snippet = "Red 3"
        fraternityWetlandsMarker.map = mapView
        
        //Flavet Field parking lot
        let flavetLotLocation = CLLocationCoordinate2DMake(29.645383, -82.353753)
        let flavetLotMarker = GMSMarker(position: flavetLotLocation)
        
        //marker properties
        flavetLotMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        flavetLotMarker.title = "Flavet Field Lot"
        flavetLotMarker.snippet = "Red 3"
        flavetLotMarker.map = mapView
        
        //Parking Garage V
        let garageVLocation = CLLocationCoordinate2DMake(29.643270, -82.351262)
        let garageVMarker = GMSMarker(position: garageVLocation)
        
        //marker properties
        garageVMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        garageVMarker.title = "Parking Garage V"
        garageVMarker.snippet = "Red 3"
        garageVMarker.map = mapView
        
        //Parking Garage 8 - Norman
        let garageVIIILocation = CLLocationCoordinate2DMake(29.645513, -82.337384)
        let garageVIIIMarker = GMSMarker(position: garageVIIILocation)
        
        //marker properties
        garageVIIIMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        garageVIIIMarker.title = "Parking Garage VIII - Norman"
        garageVIIIMarker.snippet = "Red 3"
        garageVIIIMarker.map = mapView
    }
    
    
    func addBrown2Markers() {
        //Corry Village Apartments
        let corryVillageLocation = CLLocationCoordinate2DMake(29.646657, -82.361112)
        let corryVillageMarker = GMSMarker(position: corryVillageLocation)
        
        //marker properties
        corryVillageMarker.icon = GMSMarker.markerImage(with: UIColor.brown)
        corryVillageMarker.title = "Corry Village Apartments"
        corryVillageMarker.snippet = "Brown 2"
        corryVillageMarker.map = mapView
        
        //Maguire Village
        let maguireVillageLocation = CLLocationCoordinate2DMake(29.640976, -82.370670)
        let maguireVillageMarker = GMSMarker(position: maguireVillageLocation)
        
        //marker properties
        maguireVillageMarker.icon = GMSMarker.markerImage(with: UIColor.brown)
        maguireVillageMarker.title = "Maguire Village"
        maguireVillageMarker.snippet = "Brown 2"
        maguireVillageMarker.map = mapView
        
        //University Village South
        let universityVillageLocation = CLLocationCoordinate2DMake(29.638539, -82.371040)
        let universityVillageMarker = GMSMarker(position: universityVillageLocation)
        
        //marker properties
        universityVillageMarker.icon = GMSMarker.markerImage(with: UIColor.brown)
        universityVillageMarker.title = "University Village South"
        universityVillageMarker.snippet = "Brown 2"
        universityVillageMarker.map = mapView
    }
    
    func addBrown3Markers() {
        //Diamond Village Apartments
        let diamondVillageLocation = CLLocationCoordinate2DMake(29.643055, -82.340682)
        let diamondVillageMarker = GMSMarker(position: diamondVillageLocation)
        
        //marker properties
        diamondVillageMarker.icon = GMSMarker.markerImage(with: UIColor.brown)
        diamondVillageMarker.title = "Diamond Village Apartments"
        diamondVillageMarker.snippet = "Brown 3"
        diamondVillageMarker.map = mapView
    }
    
    //*********************** Faculty Markers ******************************
    
    func addOrangeMarkers() {
        //34th Street Parking Lot
        let thirtyfourthStreetLotLocation = CLLocationCoordinate2DMake(29.638157, -82.375134)
        let thirtyfourthStreetLotMarker = GMSMarker(position:thirtyfourthStreetLotLocation)
        
        //marker properties
        thirtyfourthStreetLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        thirtyfourthStreetLotMarker.title = "34th Street Parking Lot"
        thirtyfourthStreetLotMarker.snippet = "Orange"
        thirtyfourthStreetLotMarker.map = mapView
        
        //Physical Plant Offices
        let plantOfficesLocation = CLLocationCoordinate2DMake(29.644292, -82.370574)
        let plantOfficesMarker = GMSMarker(position: plantOfficesLocation)
        
        //marker properties
        plantOfficesMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        plantOfficesMarker.title = "Phyiscal Plant Administration"
        plantOfficesMarker.snippet = "Orange"
        plantOfficesMarker.map = mapView
        
        //Building Services
        let buildingServiesLocation = CLLocationCoordinate2DMake(29.643166, -82.370751)
        let buildingServicesMarker = GMSMarker(position: buildingServiesLocation)
        
        //marker properties
        buildingServicesMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        buildingServicesMarker.title = "Building Services Lot"
        buildingServicesMarker.snippet = "Orange"
        buildingServicesMarker.map = mapView
        
        //Phillips Center
        let phillipsCenterLocation = CLLocationCoordinate2DMake(29.635251, -82.369299)
        let phillipsCenterMarker = GMSMarker(position: phillipsCenterLocation)
        
        //marker properties
        phillipsCenterMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        phillipsCenterMarker.title = "Phillips Center for the Performing Arts"
        phillipsCenterMarker.snippet = "Orange"
        phillipsCenterMarker.map = mapView
        
        //Campus Mail
        let campusMailLocation = CLLocationCoordinate2DMake(29.642823, -82.367017)
        let campusMailMarker = GMSMarker(position: campusMailLocation)
        
        //marker properties
        campusMailMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        campusMailMarker.title = "Mail & Document Services"
        campusMailMarker.snippet = "Orange"
        campusMailMarker.map = mapView
        
        //Elmore Drive Lot
        let elmoreLotLocation = CLLocationCoordinate2DMake(29.642825, -82.366261)
        let elmoreLotMarker = GMSMarker(position: elmoreLotLocation)
        
        //marker properties
        elmoreLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        elmoreLotMarker.title = "Elmore Drive Lot"
        elmoreLotMarker.snippet = "Orange"
        elmoreLotMarker.map = mapView
        
        //Entomology/Nematology
        let entNemLocation = CLLocationCoordinate2DMake(29.634636, -82.366514)
        let entNemMarker = GMSMarker(position: entNemLocation)
        
        //marker properties
        entNemMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        entNemMarker.title = "Entomolgy and Nematology Department"
        entNemMarker.snippet = "Orange"
        entNemMarker.map = mapView
        
        //Lacrosse Complex
        let lacrosseComplexLocation = CLLocationCoordinate2DMake(29.636854, -82.366479)
        let lacrosseComplexMarker = GMSMarker(position: lacrosseComplexLocation)
        
        //marker propeties
        lacrosseComplexMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        lacrosseComplexMarker.title = "Lacrosse Complex"
        lacrosseComplexMarker.snippet = "Orange"
        lacrosseComplexMarker.map = mapView
        
        //Bat House Lot
        let batHouseLotLocation = CLLocationCoordinate2DMake(29.643483, -82.364027)
        let batHouseLotMarker = GMSMarker(position: batHouseLotLocation)
        
        //marker properties
        batHouseLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        batHouseLotMarker.title = "Bat House Lot"
        batHouseLotMarker.snippet = "Orange"
        batHouseLotMarker.map = mapView
        
        //Microbiology/Cell Science
        let microCellLocation = CLLocationCoordinate2DMake(29.639975, -82.362803)
        let microCellMarker = GMSMarker(position: microCellLocation)
        
        //marker properties
        microCellMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        microCellMarker.title = "Department of Microbiology & Cell Science"
        microCellMarker.snippet = "Orange"
        microCellMarker.map = mapView
        
        //East Fifield Hall Lot
        let fifieldEastLotLocation = CLLocationCoordinate2DMake(29.638771, -82.360264)
        let fifieldEastLotMarker = GMSMarker(position: fifieldEastLotLocation)
        
        //marker properties
        fifieldEastLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        fifieldEastLotMarker.title = "Fifield Hall West Parking Lot"
        fifieldEastLotMarker.snippet = "Orange"
        fifieldEastLotMarker.map = mapView
        
        //Levin College of Law
        let levinCollegeLocation = CLLocationCoordinate2DMake(29.649430, -82.358968)
        let levinCollegeMarker = GMSMarker(position: levinCollegeLocation)
        
        //marker properties
        levinCollegeMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        levinCollegeMarker.title = "Levin College of Law"
        levinCollegeMarker.snippet = "Orange"
        levinCollegeMarker.map = mapView
        
        //Mowry Road Lot
        let mowryRoadLocation = CLLocationCoordinate2DMake(29.638625, -82.357992)
        let mowryRoadMarker = GMSMarker(position: mowryRoadLocation)
        
        //marker properties
        mowryRoadMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        mowryRoadMarker.title = "Mowry Road Lot"
        mowryRoadMarker.snippet = "Orange"
        mowryRoadMarker.map = mapView
        
        //IFAS Communications
        let ifasCommLocation = CLLocationCoordinate2DMake(29.638805, -82.357213)
        let ifasCommMarker = GMSMarker(position: ifasCommLocation)
        
        //marker properties
        ifasCommMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        ifasCommMarker.title = "IFAS Communications"
        ifasCommMarker.snippet = "Orange"
        ifasCommMarker.map = mapView
        
        //IFAS Information Office
        let ifasInfoLocation = CLLocationCoordinate2DMake(29.638803, -82.356110)
        let ifasInfoMarker = GMSMarker(position: ifasInfoLocation)
        
        //marker properties
        ifasInfoMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        ifasInfoMarker.title = "IFAS Information Office"
        ifasInfoMarker.snippet = "Orange"
        ifasInfoMarker.map = mapView
        
        //IFAS Warehouse
        let ifasWarehouseLocation = CLLocationCoordinate2DMake(29.640005, -82.356752)
        let ifasWarehouseMarker = GMSMarker(position: ifasWarehouseLocation)
        
        //marker properties
        ifasWarehouseMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        ifasWarehouseMarker.title = "IFAS Warehouse"
        ifasWarehouseMarker.snippet = "Orange"
        ifasWarehouseMarker.map = mapView
        
        //Veterinary Sciences Building Lot
        let vetSciencesLocation = CLLocationCoordinate2DMake(29.636734, -82.353109)
        let vetSciencesMarker = GMSMarker(position: vetSciencesLocation)
        
        //marker properties
        vetSciencesMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        vetSciencesMarker.title = "Veterinary Sciences Building Lot"
        vetSciencesMarker.snippet = "Orange"
        vetSciencesMarker.map = mapView
        
        //Straughn IFAS Extension Professional Development Center
        let straughCenterLocation = CLLocationCoordinate2DMake(29.632526, -82.351268)
        let straughnCenterMarker = GMSMarker(position: straughCenterLocation)
        
        //marker properties
        straughnCenterMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        straughnCenterMarker.title = "Straughn IFAS Extension Professional Development Center"
        straughnCenterMarker.snippet = "Orange"
        straughnCenterMarker.map = mapView
        
        //Animal Sciences
        let animalSciencesLocation = CLLocationCoordinate2DMake(29.631176, -82.351623)
        let animalSciencesMarker = GMSMarker(position: animalSciencesLocation)
        
        //marker properties
        animalSciencesMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        animalSciencesMarker.title = "Animal Sciences"
        animalSciencesMarker.snippet = "Orange"
        animalSciencesMarker.map = mapView
        
        //Human Resources Services North Lot
        let humanResourcesNorthLocation = CLLocationCoordinate2DMake(29.651752, -82.334040)
        let humanResourcesNorthMarker = GMSMarker(position: humanResourcesNorthLocation)
        
        //marker properties
        humanResourcesNorthMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        humanResourcesNorthMarker.title = "Human Resources Servies North Lot"
        humanResourcesNorthMarker.snippet = "Orange"
        humanResourcesNorthMarker.map = mapView
        
        //Human Resources Services South Lot
        let humanResourcesSouthLocation = CLLocationCoordinate2DMake(29.650471, -82.333355)
        let humanResourcesSouthMarker = GMSMarker(position: humanResourcesSouthLocation)
        
        //marker properties
        humanResourcesSouthMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        humanResourcesSouthMarker.title = "Human Resources Servies South Lot"
        humanResourcesSouthMarker.snippet = "Orange"
        humanResourcesSouthMarker.map = mapView
        
        //Parking Garage 8 - Norman
        let garageVIIILocation = CLLocationCoordinate2DMake(29.645383, -82.337394)
        let garageVIIIMarker = GMSMarker(position: garageVIIILocation)
        
        //marker properties
        garageVIIIMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        garageVIIIMarker.title = "Parking Garage VIII - Norman"
        garageVIIIMarker.snippet = "Orange"
        garageVIIIMarker.map = mapView
        
        //Norman Hall
        let normanHallLocation = CLLocationCoordinate2DMake(29.647012, -82.337458)
        let normanHallMarker = GMSMarker(position: normanHallLocation)
        
        //marker properties
        normanHallMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        normanHallMarker.title = "Norman Hall"
        normanHallMarker.snippet = "Orange"
        normanHallMarker.map = mapView
        
        //O'Connell Center
        let oconnellCenterLocation = CLLocationCoordinate2DMake(29.649478, -82.351114)
        let oconnellCenterMarker = GMSMarker(position: oconnellCenterLocation)
        
        //marker properties
        oconnellCenterMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        oconnellCenterMarker.title = "Stephen C. O'Connell Center"
        oconnellCenterMarker.snippet = "Orange"
        oconnellCenterMarker.map = mapView
        
        //Murphree Hall parking lots
        let murphreeLotLocation = CLLocationCoordinate2DMake(29.651290, -82.346570)
        let murphreeLotMarker = GMSMarker(position: murphreeLotLocation)
        
        //marker properties
        murphreeLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        murphreeLotMarker.title = "Murphree Hall"
        murphreeLotMarker.snippet = "Orange"
        murphreeLotMarker.map = mapView
        
        //Rhines Hall
        let rhinesHallLocation = CLLocationCoordinate2DMake(29.647631, -82.349091)
        let rhinesHallMarker = GMSMarker(position: rhinesHallLocation)
        
        //marker properties
        rhinesHallMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        rhinesHallMarker.title = "Rhines Hall"
        rhinesHallMarker.snippet = "Orange"
        rhinesHallMarker.map = mapView
        
        //East Hall
        let eastHallLocation = CLLocationCoordinate2DMake(29.647259, -82.350246)
        let eastHallMarker = GMSMarker(position: eastHallLocation)
        
        //marker properties
        eastHallMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        eastHallMarker.title = "East Hall"
        eastHallMarker.snippet = "Orange"
        eastHallMarker.map = mapView
        
        //Parking Garage XIII - Transportation and Parking Services
        let garageXIIILocation = CLLocationCoordinate2DMake(29.640511, -82.349607)
        let garageXIIIMarker = GMSMarker(position: garageXIIILocation)
        
        //marker properties
        garageXIIIMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        garageXIIIMarker.title = "Parking Garage XIII - Transportation and Parking Services"
        garageXIIIMarker.snippet = "Orange"
        garageXIIIMarker.map = mapView
        
        //Reitz Union Lot
        let reitzLotLocation = CLLocationCoordinate2DMake(29.644310, -82.347653)
        let reitzLotMarker = GMSMarker(position: reitzLotLocation)
        
        //marker properties
        reitzLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        reitzLotMarker.title = "Reitz Union Lot"
        reitzLotMarker.snippet = "Orange"
        reitzLotMarker.map = mapView
        
        //Black Hall
        let blackHallLocation = CLLocationCoordinate2DMake(29.641888, -82.347880)
        let blackHallMarker = GMSMarker(position: blackHallLocation)
        
        //marker properties
        blackHallMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        blackHallMarker.title = "Black Hall"
        blackHallMarker.snippet = "Orange"
        blackHallMarker.map = mapView
        
        //Frazier-Rogers Hall
        let frazierRogersLocation = CLLocationCoordinate2DMake(29.644403, -82.345404)
        let frazierRogersMarker = GMSMarker(position: frazierRogersLocation)
        
        //marker properties
        frazierRogersMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        frazierRogersMarker.title = "Frazer-Rogers Hall"
        frazierRogersMarker.snippet = "Orange"
        frazierRogersMarker.map = mapView
        
        //McCarty Lot
        let mccartyLotLocation = CLLocationCoordinate2DMake(29.645949, -82.344106)
        let mccartyLotMarker = GMSMarker(position: mccartyLotLocation)
        
        //marker properties
        mccartyLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        mccartyLotMarker.title = "McCarty Lot"
        mccartyLotMarker.snippet = "Orange"
        mccartyLotMarker.map = mapView
        
        //Parking Garage IV
        let garageIVLocation = CLLocationCoordinate2DMake(29.645307, -82.342904)
        let garageIVMarker = GMSMarker(position: garageIVLocation)
        
        //marker properties
        garageIVMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        garageIVMarker.title = "Parking Garage IV"
        garageIVMarker.snippet = "Orange"
        garageIVMarker.map = mapView
        
        //University Police Department Lot
        let updLotLocation = CLLocationCoordinate2DMake(29.644497, -82.342997)
        let updLotMarker = GMSMarker(position: updLotLocation)
        
        //marker properties
        updLotMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        updLotMarker.title = "University Police Department Lot"
        updLotMarker.snippet = "Orange"
        updLotMarker.map = mapView
        
        //Housing Office
        let housingOfficeLocation = CLLocationCoordinate2DMake(29.644139, -82.339825)
        let housingOfficeMarker = GMSMarker(position: housingOfficeLocation)
        
        //marker properties
        housingOfficeMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        housingOfficeMarker.title = "Housing Office"
        housingOfficeMarker.snippet = "Orange"
        housingOfficeMarker.map = mapView
        
        //Cypress Hall
        let cypressHallLocation = CLLocationCoordinate2DMake(29.645778, -82.339863)
        let cypressHallMarker = GMSMarker(position: cypressHallLocation)
        
        //marker properties
        cypressHallMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        cypressHallMarker.title = "Cypress Hall"
        cypressHallMarker.snippet = "Orange"
        cypressHallMarker.map = mapView
        
        //Mallory Hall
        let malloryHallLocation = CLLocationCoordinate2DMake(29.646818, -82.340260)
        let malloryHallMarker = GMSMarker(position: malloryHallLocation)
        
        //marker properties
        malloryHallMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        malloryHallMarker.title = "Mallory Hall"
        malloryHallMarker.snippet = "Orange"
        malloryHallMarker.map = mapView
        
        //Institute of Black Culture
        let blackCultureLocation = CLLocationCoordinate2DMake(29.652310, -82.342160)
        let blackCultureMarker = GMSMarker(position: blackCultureLocation)
        
        //marker properties
        blackCultureMarker.icon = GMSMarker.markerImage(with: UIColor.orange)
        blackCultureMarker.title = "Institute of Black Culture"
        blackCultureMarker.snippet = "Orange"
        blackCultureMarker.map = mapView
    }
    
    func addBlueMarkers() {
        //34th Street Parking Lot
        let thirtyfourthStreetLotLocation = CLLocationCoordinate2DMake(29.638177, -82.375154)
        let thirtyfourthStreetLotMarker = GMSMarker(position:thirtyfourthStreetLotLocation)
        
        //marker properties
        thirtyfourthStreetLotMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        thirtyfourthStreetLotMarker.title = "34th Street Parking Lot"
        thirtyfourthStreetLotMarker.snippet = "Blue"
        thirtyfourthStreetLotMarker.map = mapView
        
        //Veterinary Sciences Building Lot
        let vetSciencesLocation = CLLocationCoordinate2DMake(29.636754, -82.353129)
        let vetSciencesMarker = GMSMarker(position: vetSciencesLocation)
        
        //marker properties
        vetSciencesMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        vetSciencesMarker.title = "Veterinary Sciences Building Lot"
        vetSciencesMarker.snippet = "Blue"
        vetSciencesMarker.map = mapView
        
        //Shealy Drive Lot
        let shealyLotLocation = CLLocationCoordinate2DMake(29.635592, -82.351672)
        let shealyLotMarker = GMSMarker(position: shealyLotLocation)
        
        //marker properties
        shealyLotMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        shealyLotMarker.title = "Shealy Drive Lot"
        shealyLotMarker.snippet = "Blue"
        shealyLotMarker.map = mapView
        
        //Small Animal Hospital
        let animalHospitalLocation = CLLocationCoordinate2DMake(29.633567, -82.350944)
        let animalHospitalMarker = GMSMarker(position: animalHospitalLocation)
        
        //marker properties
        animalHospitalMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        animalHospitalMarker.title = "Small Animal Hospital Lot"
        animalHospitalMarker.snippet = "Blue"
        animalHospitalMarker.map = mapView
        
        //Veterinary Medicine East Lot
        let vetEastLotLocation = CLLocationCoordinate2DMake(29.63409, -82.347740)
        let vetEastLotMarker = GMSMarker(position: vetEastLotLocation)
        
        //marker properties
        vetEastLotMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        vetEastLotMarker.title = "Veterinary Medicine East Lot"
        vetEastLotMarker.snippet = "Blue"
        vetEastLotMarker.map = mapView
        
        //Parking Garage IX
        let garageIXLocation = CLLocationCoordinate2DMake(29.636311, -82.349043)
        let garageIXMarker = GMSMarker(position: garageIXLocation)
        
        //marker properties
        garageIXMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        garageIXMarker.title = "Parking Garage IX"
        garageIXMarker.snippet = "Blue"
        garageIXMarker.map = mapView
        
        //Parking Garage XIII - Transportation and Parking Services
        let garageXIIILocation = CLLocationCoordinate2DMake(29.640531, -82.349627)
        let garageXIIIMarker = GMSMarker(position: garageXIIILocation)
        
        //marker properties
        garageXIIIMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        garageXIIIMarker.title = "Parking Garage XIII - Transportation and Parking Services"
        garageXIIIMarker.snippet = "Blue"
        garageXIIIMarker.map = mapView
        
        //Shands Medical Plaza
        let shandsPlazaLocation = CLLocationCoordinate2DMake(29.637774, -82.349303)
        let shandsPlazaMarker = GMSMarker(position: shandsPlazaLocation)
        
        //marker properties
        shandsPlazaMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        shandsPlazaMarker.title = "Shands Medical Plaza"
        shandsPlazaMarker.snippet = "Blue"
        shandsPlazaMarker.map = mapView
        
        //Parking Garage 6
        let garageVILocation = CLLocationCoordinate2DMake(29.637226, -82.342333)
        let garageVIMarker = GMSMarker(position: garageVILocation)
        
        //marker properties
        garageVIMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        garageVIMarker.title = "Parking Garage VI"
        garageVIMarker.snippet = "Blue"
        garageVIMarker.map = mapView
        
        //Human Resources Services North Lot
        let humanResourcesNorthLocation = CLLocationCoordinate2DMake(29.651772, -82.334040)
        let humanResourcesNorthMarker = GMSMarker(position: humanResourcesNorthLocation)
        
        //marker properties
        humanResourcesNorthMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        humanResourcesNorthMarker.title = "Human Resources Servies North Lot"
        humanResourcesNorthMarker.snippet = "Blue"
        humanResourcesNorthMarker.map = mapView
        
        //Human Resources Services South Lot
        let humanResourcesSouthLocation = CLLocationCoordinate2DMake(29.650491, -82.333355)
        let humanResourcesSouthMarker = GMSMarker(position: humanResourcesSouthLocation)
        
        //marker properties
        humanResourcesSouthMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        humanResourcesSouthMarker.title = "Human Resources Servies South Lot"
        humanResourcesSouthMarker.snippet = "Blue"
        humanResourcesSouthMarker.map = mapView
    }
    
    func addMedicalResidentMarkers() {
        //Parking Garage 3
        let garageIIILocation = CLLocationCoordinate2DMake(29.638657, -82.347768)
        let garageIIIMarker = GMSMarker(position: garageIIILocation)
        
        //marker properties
        garageIIIMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        garageIIIMarker.title = "Parking Garage III"
        garageIIIMarker.snippet = "Medical Resident"
        garageIIIMarker.map = mapView
        
        //Parking Garage XIII - Transportation and Parking Services
        let garageXIIILocation = CLLocationCoordinate2DMake(29.640531, -82.349627)
        let garageXIIIMarker = GMSMarker(position: garageXIIILocation)
        
        //marker properties
        garageXIIIMarker.icon = GMSMarker.markerImage(with: UIColor.blue)
        garageXIIIMarker.title = "Parking Garage XIII - Transportation and Parking Services"
        garageXIIIMarker.snippet = "Medical Resident"
        garageXIIIMarker.map = mapView
    }
    
    func addUFHealthSouthMarkers() {
        //UF Health South Garage
        let ufHealthSouthLocation = CLLocationCoordinate2DMake(29.638348, -82.339929)
        let ufHealthSouthMarker = GMSMarker(position: ufHealthSouthLocation)
        
        //marker properties
        let ufHealthSouthColor = UIColor(red: 0xff/0xFF, green: 0xff/0xFF, blue: 0x66/0xFF, alpha: 0xFF/0xFF)
        ufHealthSouthMarker.icon = GMSMarker.markerImage(with: ufHealthSouthColor)
        ufHealthSouthMarker.title = "Shands South Parking Garage"
        ufHealthSouthMarker.snippet = "UF Health South"
        ufHealthSouthMarker.map = mapView
    }
    
    func addStaffCommuterMarkers() {
        //Racing Lab
        let racingLabLocation = CLLocationCoordinate2DMake(29.640110, -82.373809)
        let racingLabMarker = GMSMarker(position: racingLabLocation)
        
        //marker properties
        racingLabMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        racingLabMarker.title = "UF Racing Lab"
        racingLabMarker.snippet = "Commuter"
        racingLabMarker.map = mapView
        
        //Building Services
        let buildingServiesLocation = CLLocationCoordinate2DMake(29.643186, -82.370771)
        let buildingServicesMarker = GMSMarker(position: buildingServiesLocation)
        
        //marker properties
        buildingServicesMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        buildingServicesMarker.title = "Building Services Lot"
        buildingServicesMarker.snippet = "Commuter"
        buildingServicesMarker.map = mapView
        
        //Asset Management Lot
        let assetManagementLocation = CLLocationCoordinate2DMake(29.643914, -82.368086)
        let assetManagementMarker = GMSMarker(position: assetManagementLocation)
        
        //marker properties
        assetManagementMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        assetManagementMarker.title = "Asset Managment at UF"
        assetManagementMarker.snippet = "Commuter"
        assetManagementMarker.map = mapView
        
        //Elmore Drive Lot
        let elmoreLotLocation = CLLocationCoordinate2DMake(29.642805, -82.366281)
        let elmoreLotMarker = GMSMarker(position: elmoreLotLocation)
        
        //marker properties
        elmoreLotMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        elmoreLotMarker.title = "Elmore Drive Lot"
        elmoreLotMarker.snippet = "Commuter"
        elmoreLotMarker.map = mapView
        
        //West Fifield Hall Lot
        let fifieldWestLotLocation = CLLocationCoordinate2DMake(29.638497, -82.361970)
        let fifieldWestLotMarker = GMSMarker(position: fifieldWestLotLocation)
        
        //marker properties
        fifieldWestLotMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        fifieldWestLotMarker.title = "Fifield Hall West Parking Lot"
        fifieldWestLotMarker.snippet = "Commuter"
        fifieldWestLotMarker.map = mapView
        
        //Mowry Road Lot
        let mowryRoadLocation = CLLocationCoordinate2DMake(29.638605, -82.357992)
        let mowryRoadMarker = GMSMarker(position: mowryRoadLocation)
        
        //marker properties
        mowryRoadMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        mowryRoadMarker.title = "Mowry Road Lot"
        mowryRoadMarker.snippet = "Commuter"
        mowryRoadMarker.map = mapView
        
        //IFAS Facilities Operations
        let ifasFacilitiesLocation = CLLocationCoordinate2DMake(29.637899, -82.355906)
        let ifasFacilitiesMarker = GMSMarker(position: ifasFacilitiesLocation)
        
        //marker properties
        ifasFacilitiesMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        ifasFacilitiesMarker.title = "IFAS Facilities Operations Lot"
        ifasFacilitiesMarker.snippet = "Commuter"
        ifasFacilitiesMarker.map = mapView
        
        //Veterinary Medicine West Lot
        let vetWestLotLocation = CLLocationCoordinate2DMake(29.633780, -82.351560)
        let vetWestLotMarker = GMSMarker(position: vetWestLotLocation)
        
        //marker properties
        vetWestLotMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        vetWestLotMarker.title = "Veterinary Medicine West Lot"
        vetWestLotMarker.snippet = "Commuter"
        vetWestLotMarker.map = mapView
        
        //Veterinary Medicine East Lot
        let vetEastLotLocation = CLLocationCoordinate2DMake(29.634129, -82.347760)
        let vetEastLotMarker = GMSMarker(position: vetEastLotLocation)
        
        //marker properties
        vetEastLotMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        vetEastLotMarker.title = "Veterinary Medicine East Lot"
        vetEastLotMarker.snippet = "Commuter"
        vetEastLotMarker.map = mapView
        
        //Parking Garage IX
        let garageIXLocation = CLLocationCoordinate2DMake(29.636480, -82.349097)
        let garageIXMarker = GMSMarker(position: garageIXLocation)
        
        //marker properties
        garageIXMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        garageIXMarker.title = "Parking Garage IX"
        garageIXMarker.snippet = "Commuter"
        garageIXMarker.map = mapView
        
        //Pony Field South Lot
        let ponyFieldLocation = CLLocationCoordinate2DMake(29.639224, -82.351205)
        let ponyFieldMarker = GMSMarker(position: ponyFieldLocation)
        
        //marker properties
        ponyFieldMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        ponyFieldMarker.title = "Pony Field Lot"
        ponyFieldMarker.snippet = "Commuter"
        ponyFieldMarker.map = mapView
        
        //Commuter Lot
        let commuterLotLocation = CLLocationCoordinate2DMake(29.642009, -82.351258)
        let commuterLotMarker = GMSMarker(position: commuterLotLocation)
        
        //marker properties
        commuterLotMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        commuterLotMarker.title = "Commuter Lot"
        commuterLotMarker.snippet = "Commuter"
        commuterLotMarker.map = mapView
        
        //Parking Garage V
        let garageVLocation = CLLocationCoordinate2DMake(29.643250, -82.351662)
        let garageVMarker = GMSMarker(position: garageVLocation)
        
        //marker properties
        garageVMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        garageVMarker.title = "Parking Garage V"
        garageVMarker.snippet = "Commuter"
        garageVMarker.map = mapView
        
        //Baby Gator Lot
        let babyGatorLocation = CLLocationCoordinate2DMake(29.645369, -82.360500)
        let babyGatorMarker = GMSMarker(position: babyGatorLocation)
        
        //marker properties
        babyGatorMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        babyGatorMarker.title = "Baby Gator Lot"
        babyGatorMarker.snippet = "Commuter"
        babyGatorMarker.map = mapView
        
        //Student Council Gardens Lot
        let studentGardensLotLocation = CLLocationCoordinate2DMake(29.645073, -82.361622)
        let studentGardensLotMarker = GMSMarker(position: studentGardensLotLocation)
        
        //marker properties
        studentGardensLotMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        studentGardensLotMarker.title = "Student Council Gardens Lot"
        studentGardensLotMarker.snippet = "Commuter"
        studentGardensLotMarker.map = mapView
        
        //Levin College of Law
        let levinCollegeLocation = CLLocationCoordinate2DMake(29.649410, -82.358988)
        let levinCollegeMarker = GMSMarker(position: levinCollegeLocation)
        
        //marker properties
        levinCollegeMarker.icon = GMSMarker.markerImage(with: UIColor.green)
        levinCollegeMarker.title = "Levin College of Law"
        levinCollegeMarker.snippet = "Commuter"
        levinCollegeMarker.map = mapView
    }
    
    //*********************** Other Markers ********************************
    
    func addAnyDecalExceptPnRMarkers() {
        let anyDecalColor = UIColor(red: 0xff/0xff, green: 0xe6/0xff, blue: 0xb3/0xff, alpha: 0xff/0xff)
        
        //Southwest Rec North Lot
        let southwestNorthLotLocation = CLLocationCoordinate2DMake(29.637896, -82.367495)
        let southwestNorthLotMarker = GMSMarker(position: southwestNorthLotLocation)
        
        //marker properties
        southwestNorthLotMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        southwestNorthLotMarker.title = "Southwest Recreation Center North Lot"
        southwestNorthLotMarker.snippet = "Any Decal, Except Park & Ride"
        southwestNorthLotMarker.map = mapView
        
        //Bat House Lot
        let batHouseLotLocation = CLLocationCoordinate2DMake(29.643463, -82.364007)
        let batHouseLotMarker = GMSMarker(position: batHouseLotLocation)
        
        //marker properties
        batHouseLotMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        batHouseLotMarker.title = "Bat House Lot"
        batHouseLotMarker.snippet = "Any Decal, Except Park & Ride"
        batHouseLotMarker.map = mapView
        
        //Food/Environment Toxicology Lab
        let toxicologyLabLocation = CLLocationCoordinate2DMake(29.637146, -82.359369)
        let toxicologyLabMarker = GMSMarker(position: toxicologyLabLocation)
        
        //marker properties
        toxicologyLabMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        toxicologyLabMarker.title = "Food/Environment Toxicology Lab"
        toxicologyLabMarker.snippet = "Any Decal, Except Park & Ride"
        toxicologyLabMarker.map = mapView
        
        //Fraternity Row
        let fraternityRowLocation = CLLocationCoordinate2DMake(29.646837, -82.357880)
        let fraternityRowMarker = GMSMarker(position: fraternityRowLocation)
        
        //marker properties
        fraternityRowMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        fraternityRowMarker.title = "Fraternity Row"
        fraternityRowMarker.snippet = "Any Decal, Except Park & Ride"
        fraternityRowMarker.map = mapView
        
        //West Fraternity Row Lot
        let fraternityRowWestLotLocation = CLLocationCoordinate2DMake(29.647670, -82.358905)
        let fraternityRowWestLotMarker = GMSMarker(position: fraternityRowWestLotLocation)
        
        //marker properties
        fraternityRowWestLotMarker.icon = GMSMarker.markerImage(with: anyDecalColor)
        fraternityRowWestLotMarker.title = "Fraternity Row West Lot"
        fraternityRowWestLotMarker.snippet = "Any Decal, Except Park & Ride"
        fraternityRowWestLotMarker.map = mapView
    }
    
    func addGatedMarkers() {
        //Parking Garage 1
        let garageILocation = CLLocationCoordinate2DMake(29.641069, -82.342050)
        let garageIMarker = GMSMarker(position: garageILocation)
        
        //marker properties
        garageIMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        garageIMarker.title = "Parking Garage I"
        garageIMarker.snippet = "Gated"
        garageIMarker.map = mapView
        
        //Parking Garage 2
        let garageIILocation = CLLocationCoordinate2DMake(29.638879, -82.346755)
        let garageIIMarker = GMSMarker(position: garageIILocation)
        
        //marker properties
        garageIIMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        garageIIMarker.title = "Parking Garage II"
        garageIIMarker.snippet = "Gated"
        garageIIMarker.map = mapView
        
        //Parking Garage 3
        let garageIIILocation = CLLocationCoordinate2DMake(29.638637, -82.347748)
        let garageIIIMarker = GMSMarker(position: garageIIILocation)
        
        //marker properties
        garageIIIMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        garageIIIMarker.title = "Parking Garage III"
        garageIIIMarker.snippet = "Gated"
        garageIIIMarker.map = mapView
        
        //Parking Garage 6
        let garageVILocation = CLLocationCoordinate2DMake(29.637226, -82.342333)
        let garageVIMarker = GMSMarker(position: garageVILocation)
        
        //marker properties
        garageVIMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        garageVIMarker.title = "Parking Garage VI"
        garageVIMarker.snippet = "Gated"
        garageVIMarker.map = mapView
        
        //Reitz Union Bay
        let reitzBayLocation = CLLocationCoordinate2DMake(29.645842, -82.348298)
        let reitzBayMarker = GMSMarker(position: reitzBayLocation)
        
        //marker properties
        reitzBayMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        reitzBayMarker.title = "Reitz Union Loading Bay"
        reitzBayMarker.snippet = "Gated"
        reitzBayMarker.map = mapView
        
        //Murphree Hall parking lots
        let murphreeLotLocation = CLLocationCoordinate2DMake(29.651250, -82.346570)
        let murphreeLotMarker = GMSMarker(position: murphreeLotLocation)
        
        //marker properties
        murphreeLotMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        murphreeLotMarker.title = "Murphree Hall"
        murphreeLotMarker.snippet = "Gated"
        murphreeLotMarker.map = mapView
        
        //Infirmary lot
        let infirmaryLotLocation = CLLocationCoordinate2DMake(29.648880, -82.346357)
        let infirmaryLotMarker = GMSMarker(position: infirmaryLotLocation)
        
        //marker properties
        infirmaryLotMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        infirmaryLotMarker.title = "Infirmary Parking Lot"
        infirmaryLotMarker.snippet = "Gated"
        infirmaryLotMarker.map = mapView
        
        //Inner Road
        let innerRoadLocation = CLLocationCoordinate2DMake(29.647323, -82.341130)
        let innerRoadMarker = GMSMarker(position: innerRoadLocation)
        
        //marker properties
        innerRoadMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        innerRoadMarker.title = "Inner Road"
        innerRoadMarker.snippet = "Gated"
        innerRoadMarker.map = mapView
        
        //Criser Hall Parking
        let criserLotLocation = CLLocationCoordinate2DMake(29.650021, -82.340813)
        let criserLotMarker = GMSMarker(position: criserLotLocation)
        
        //marker properties
        criserLotMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        criserLotMarker.title = "Criser Hall Parking Lot"
        criserLotMarker.snippet = "Gated"
        criserLotMarker.map = mapView
        
        //Little Hall Parking
        let littleLotLocation = CLLocationCoordinate2DMake(29.649324, -82.340714)
        let littleLotMarker = GMSMarker(position: littleLotLocation)
        
        //marker properties
        littleLotMarker.icon = GMSMarker.markerImage(with: UIColor.purple)
        littleLotMarker.title = "Little Hall Parking Lot"
        littleLotMarker.snippet = "Gated"
        littleLotMarker.map = mapView
    }
    
    @IBAction func startSearch(_ sender: UIButton) {
        mapView.clear()
        performSegue(withIdentifier: "showSearchMenu", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showSearchMenu") {
            self.searchResults = []
            //print(searchReults)
        }
    }
}
