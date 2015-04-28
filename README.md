# MyHostApp
Test RubyMotion WatchKit app for an open support ticket

### The Error
`The UIApplicationDelegate in the iPhone App never called reply in -[UIApplicationDelegate application:handleWatchKitExtensionRequest:reply:]`

### To reproduce
* `rake watch`
* Touch "Pull from parent"
* Error label will be populated, and errors are put to the repl
