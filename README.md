# Epion Interview Project

Thanks for being interested in coming to work here at Epion Health. Our team values building, reviewing, and pairing on well-crafted applications.  This repo was built to test how you build applications and how you would fit in working with the team at Epion.  It's a simplified version of our main Check-in application, and will give you some insight into our product development process.  If you'd like to learn more about our Check-in product please visit our [website](http://www.epionhealth.com/checkin-how-it-works-2/)

We will use Slack to share your screen unless that wouldn't work for you. Please make sure you have the desktop app installed beforehand.

## Let's get started (Take home section)

### Setup

Please go ahead and clone this repo and run `bin/setup` to get everything up and running. Before you start, you should have:

* Ruby 2.6.5

We use the following software versions (if you have previous releases and they work well there's no need to update):

* Postgres 11.3
* Node 10.1.0
* Yarn 1.15.2

The setup process will install dependencies, and automatically configure the database to have a sample patient to work with for your interview.  If you run into any issues with setup, please reach out to your interview team to ask for assistance.

### First passing spec

Now that your repo is setup, we can start the fun stuff!  Go ahead and run `bundle exec rspec`.  You should see one failing spec.

- [ ] add enough code to make this test pass
- [ ] open a pull-request with the changes for us to review
- [ ] Email your interview team with a link to the PR.

We will review your PR as a team, and reach back out to you to set up a pairing session

## The problem to solve (Pairing Session)

One of the most common pieces of check-in paperwork is a patient questionnaire to help assess if a patient is suffering from a specific ailment, which we'll call a "screener". We've implemented a number of screeners in our application, but for the this exercise, you're going to add the first one, the PHQ for depression screening.

Details about the screener are here: http://www.cqaimh.org/pdf/tool_phq9.pdf

In a nutshell, we need to

- [ ] Create a form with the first 2 scored questions the patient can complete
- [ ] Calculate the resulting score based on the rules (below)
- [ ] Store the results for this checkin
- [ ] Notify the user that they need additional screening if their score is appropriate

There's lots of other things we can do, but this is the simplest starting point.

*When* I am completing the checkin
*I want to* calculate and store my PHQ2 score
*so that* a further depression diagnosis can be performed per the protocol.


## Additional information about the task

The form looks like this:

```
Over the past 2 weeks, how often have you been bothered by any of the following problems?

1. Little interest of pleasure in doing things?

* Not at all
* Several days
* More than half the days
* Nearly every day

2. Feeling down, depressed or hopeless?

* Not at all
* Several days
* More than half the days
* Nearly every day
```

Those two questions are scored as follows:

0 * Not at all
1 * Several days
2 * More than half the days
3 * Nearly every day

A question would be considered to have a `high` score if the patient chose `2 * More than half the days` or `3 * Nearly every day`. If either question 1 or question 2 is scored as `high`, or if both questions are scored as `high`, the user should be notified that additional screening should be completed.



