# WriteexcelOnRails

[writeexcel](https://github.com/cxn03651/writeexcel) for rails gems

## Installation

Add this line to your application's Gemfile:

    gem 'writeexcel_on_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install writeexcel_on_rails

## Usage

Add support for the new format in your controller:
```ruby
class HomeController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.xls { render :xls => "<filename>"}
    end
  end
end
```
Create an xls view app/views/home/index.rxls:
```html
worksheet  = workbook.add_worksheet("title")
worksheet.write(1, 1, 'Hi Excel.')
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Acknowledgment
[spreadsheet_on_rails](https://github.com/10to1/spreadsheet_on_rails)
