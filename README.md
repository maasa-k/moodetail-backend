# MOODetail (backend)

MOODetail is a Single Page Application using React/Redux on the frontend and a Rails API backend.  This repository is for the Rails API backend (the frontend can be found at https://github.com/maasa333/moodetail-frontend).  This app is for keeping track of what prompts certain moods, and to distinguish between those that are within your control and those that are out of your control. 

## Installation

In the project directory, you can run:

```
bundle install
rails db:migrate
rails db:seed
rails s
```

Make sure to start the PostgreSQL database server:

```
service postgresql start
```

## Usage

After seeding the database for the mood states through the Rails API backend and starting the React/Redux server on the frontend (separate repository), you can begin entering descriptions of promtps to various moods.  From the moods index page, click on a mood to see that mood's show page which includes the input form for entering a new prompt.  Once submitted, the description will append to either the "Within my control" or "Out of my control" card and will save to the database. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/maasa333/moodetail-backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

This is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MOODetail project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/maasa333/moodetail-backend/blob/master/CODE_OF_CONDUCT.md).