# Pre-work - *tipCalculator*

tipCalculator is a tip calculator application for iOS.

Submitted by: Eric Liang

Time spent: 2 hour spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src = "http://g.recordit.co/xZ7mDxleK3.gif" width=250><br>

## Notes

Describe any challenges encountered while building the app.

- Keyboard bug
	- had to toggle keyboard in Xcode. 
    
    - Ran into this error:
        2019-03-19 21:41:16.068647-0700 tipCalculator[68068:5948113] *** Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<tipCalculator.ViewController 0x7fa89540b610> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key settingsButton.'

## License

    Copyright [2019] [Eric Liang]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
