# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.delete_all
Bug.delete_all


User.create(   name: 'John Kanthak',
               email: 'johnkanthak@gmail.com',
               password: 'password',
               password_confirmation: 'password',
               admin: true
            )

User.create(   name: 'Robert Godfrey',
               email: 'godfrey@example.com',
               password: 'password',
               password_confirmation: 'password',
               admin: false
            )
            
User.create(   name: 'Paul Gates',
               email: 'gates@example.com',
               password: 'password',
               password_confirmation: 'password',
               admin: false
            )

User.create(   name: 'Brent Underwood',
               email: 'underwood@example.com',
               password: 'password',
               password_confirmation: 'password',
               admin: false
            )   

User.create(   name: 'Mike Davis',
               email: 'davis@example.com',
               password: 'password',
               password_confirmation: 'password',
               admin: false
            )                                           

User.create(   name: 'Guest User',
               email: 'guest@guest.com',
               password: 'password',
               password_confirmation: 'password',
               admin: false
            ) 



Bug.create( title: 'Resize Welcome Wheel', 
            description: 'The wheel of icons in the Welcome screen needs to be resized to accommodate an icon for a sixth module.',
            status: 'Open',
            priority: 3,
            reported_by: User.find_by_name('John Kanthak').id,
            comment: 'The size of the wheel in pixels and the X and Y positions of the icons are explicitly set in the file \'configload.AS.\'')

Bug.create( title: 'Buffer an address search result', 
            description: 'In the disaster planning module, the user needs to be able to enter a street address, zoom to it, and then apply a buffer to the search. This functionality existed in version 1.7.  This is essential to the BPR module!',
            status: 'Open',
            priority: 0,
            reported_by: User.find_by_name('Brent Underwood').id,
            comment: 'This is an item in the traceability matrix. -Diane')
Bug.create( title: 'Simplify submit in Spatial Search', 
            description: 'Why do you have to click on both the "apply buffer" AND the "entirely included in" icons in the research widget\'s Spatial Search tab? Version 1.7 has both operations in the "apply" button, so you only have to click once.
',
            status: 'Open',
            priority: 3,
            reported_by: User.find_by_name('Paul Gates').id)
Bug.create( title: 'Add menu for buffer distance', 
            description: 'Diane would like a drop-down menu for entering the distance into the eSearch buffer. The production version has an input menu with five numeric values (with 3 as the default).',
            status: 'Open',
            priority: 2,
            reported_by: User.find_by_name('John Kanthak').id,
            comment: 'Should this be a combo box, so the user can enter any value? -JFK')
Bug.create( title: 'Update text in "About" tab.', 
            description: 'The text in the Welcome screen\'s "About" tab needs to be updated to describe version 2.0. Also, the module owners\' contact info needs to be updated. See Paul Gates for new contact numbers.',
            status: 'Closed',
            priority: 3,
            reported_by: User.find_by_name('Robert Godfrey').id,
            comment: 'This info is provided by the widget config file. Is there a reason TSPI needs to do this?')
Bug.create( title: 'Restore demographic widget', 
            description: 'Demographics widget should be restored or, preferably, replaced with "radio button"-type functinoality in the Map Contents widget (when any one of the three designated layers is selected, the other two are toggled off).',
            status: 'Open',
            priority: 1,
            reported_by: User.find_by_name('Paul Gates').id,
            comment: 'This is one of the specs in the Traceability Matrix, which will have to be modified to accommodate any change. -Diane')
Bug.create( title: 'Report widget throws exception', 
            description: 'If you have more than one Census layer selected in the TOC and then try to open the Reports widget, you get this error (see screenshot) and the application hangs.',
            status: 'Open',
            priority: 0,
            reported_by: User.find_by_name('John Kanthak').id,
            comment: 'I couldn\'t reproduce this. Which module were you in? -Robert')
Bug.create( title: 'AS3 Error in eSearch widget', 
            description: 'In the widget\'s Text Search tab, if you enter both a state abbreviation and a FIPS code, you get an error pop-up: "ReferenceError: Error #1065: Variable _FormItemStyle__embed_css_Assets_swf_mx_ containers_FormItem_Required_ 527421487 is not defined. \'Census_layer\' not found." When you close the error message, the search then executes with no problems.',
            status: 'Open',
            priority: 1,
            reported_by: User.find_by_name('Robert Godfrey').id,
            comment: 'This is GIS data related. Can you take a look, Robert?')
Bug.create( title: 'Text doesn\'t wrap in the "About" panel', 
            description: 'The "Link" tag is gone from the ArcGIS for Flex API, replaced by the "About" tag, and now the text won\'t left-align correctly in the Welcome screen "About" tab.',
            status: 'Closed',
            priority: 3,
            reported_by: User.find_by_name('Paul Gates').id,
            comment: 'Came up within an MXML hack that fixes this. -JFK')
 
 
Bug.create( title: 'Geographical search icon is wrong size', 
            description: 'The icon for Geographical Search in the eSearch widget should be the same size as the others.',
            status: 'Open',
            priority: 3,
            reported_by: User.find_by_name('Paul Gates').id)
Bug.create( title: 'Can\'t select NOAA layer', 
            description: 'When I click on the NOAA layer in the TOC, the data doesn\'t render on the map.',
            status: 'Open',
            priority: 2,
            reported_by: User.find_by_name('John Kanthak').id)
Bug.create( title: 'Dynamic legend not updating', 
            description: 'Aren\'t the icons in the Dynamic Legend supposed to update along with the icons on the map?',
            status: 'Closed',
            priority: 3,
            reported_by: User.find_by_name('Brent Underwood').id,
            comment: 'Fixed. -RLG')
Bug.create( title: 'Restore Reports widget', 
            description: 'Reports widget should be restored or, preferably, replaced with "radio button"-type functinoality in the Map Contents widget (when any one of the three designated layers is selected, the other two are toggled off).',
            status: 'Open',
            priority: 2,
            reported_by: User.find_by_name('Paul Gates').id,
            comment: 'This is one of the specs in the Traceability Matrix, which will have to be modified to accommodate any change. -Diane')
Bug.create( title: 'Colors are too high-contrast', 
            description: 'My eyes get sore after using the app for a couple hours. Can we tone down the contrast?',
            status: 'Open',
            priority: 3,
            reported_by: User.find_by_name('Mike Davis').id,
            comment: 'I agree. Who picked this color scheme? -Brent')
Bug.create( title: 'Map refreshes too slowly', 
            description: 'When you scroll, the map is sluggish in updating. Is this just on my machine, or everyone\'s?',
            status: 'Open',
            priority: 2,
            reported_by: User.find_by_name('Mike Davis').id,
            comment: 'Working on this. -Robert')           
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
