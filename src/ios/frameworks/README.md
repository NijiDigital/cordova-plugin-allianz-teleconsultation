README

Version : 1.2

1/ Installation du framework

- Drag and drop les frameworks visioWeb.framework et WebRTC.framework dans le projet
Xcode 10 et moins :
- Ajouter les framework à la partie "Embedded Binaries" de l'onglet Général du projet
Xcode 11 :
- Sélectionner "Embed & sign"

- Ajouter dans le fichier .plist les clés :

	- NSCameraUsageDescription
	- NSMicrophoneUsageDescription

2/ Utilisation du framework

Le framework contient une classe "VWVisioViewController".
Pour l'utiliser il suffit d'en hériter grâce à l'import :

#import <visioWeb/visioWeb.h>

Si votre écran qui hérite de VWVisioViewController possède déjà une webview, elle sera utilisée,
sinon une webview fullscreen sera créée dans le callback "viewDidLoad"
Plus de détail sur l'utilisation de la classe sont disponibles dans le header "VWVisioViewController.h"
