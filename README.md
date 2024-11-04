# flutter_template

My personal template when starting a new flutter project. It includes a dependency injection system (get_it), a folder architecture and a model-viewmodel-view implementation for flutter.

## Quick start 

- Launch with provider Dummy : `flutter run -t ./lib/main_dummy.dart`
- Launch with provider Live : `flutter run -t ./lib/main_live`

## Providers

This template use two providers to split the repositories in case you are not in the same environment. There are two providers that are not implemented : 
- Live : Which take a baseUrl to communicate with an api
- Dummy : Which use static string to simulate the communication to the api

To split this behavior, each provider instantiate their own repositories in their provider file (dummy will instantiate the DummyExampleRepository and live will instantiate the LiveExampleRepository).

## Folders

### Components

Components are used to store small widget that can be reused by any page or dialog of the app.

They can be either :
- An atom : A small widget
- A molecule : A widget containing atoms
- An organism : A widget containing molecules

If a component behavior become too big, there should be a ViewModel with it

### Model

The model contains every data class and the core concept of the Model-View-ViewModel.

### Pages

Pages contains every pages of the app. It's a screen the user will see containing components and specific widget

Every pages should at least have a ViewModel.

### Providers

The providers help you splitting your code behavior depending of the environment.

### Repositories

Every repository give you a way to retrieve data and create data class with it. They can only be called from Services.

### Services

Every services helps you calling repositories and transformers to retrieve data as you want.

### Transformers 

Transformers let you transform data, from one class to an another. They can only be called from Services.

### Utils

Utils contain every extensions for the project. It can be extensions for base class (e.g. string, int, boolean) and for specific classes too.

## Diagram

```mermaid
flowchart LR
    Page
    ViewModel
    Component
    Service
    Transformer
    Repository
    DataClass[Data class]
    Page<-->ViewModel
    Page<-->Component
    ViewModel-->Service
    Service-->Transformer
    Service-->Repository
    Component .->ViewModel
    Repository-- Create -->DataClass
    Transformer-- Transform -->DataClass
```
