# Epion Interview Project

Hi and thanks for being interested in coming to work here at Epion Health. Our team values building, reviewing, and pairing on well-crafted applications and we'd like to find out more about how _you_ build applications by working on a small project together.

## The CheckIn app

The Epion CheckIn application provides a quick and easy way for patients to fill out all the necessary medical information for their appointment on an iPad. We're going to use a *very* simple version of the application so we can focus on adding new functionality without getting too deep in the weeds on the details of the real application.

That said, we'd like to treat this like a real project. That means writing good, well-factored code, including meaningful tests, and solving the problem in front of us with both thoughtfulness and efficiency.

This repo contains a Rails application with the same kind of testing infrastructure (RSpec and friends) that we use to build our real world app.

## The problem to solve

One of the most common pieces of check-in paperwork is a patient questionaire to help assess if a patient is suffering from a specific ailment, which we'll call a "screener". We've implemented a number of screeners in our application, but for the this exercise, you're going to add the first one, the PHQ for depression screening.

Details about the screener are here: http://www.cqaimh.org/pdf/tool_phq9.pdf

In a nutshell, we need to

[ ] Create a form with the first 2 scored questions the patient can complete
[ ] Calculate the resulting score based on the rules (below)
[ ] Store the results for this checkin
[ ] Notify the user that they need additional screening if their score is appropriate

There's lots of other things we can do, but this is the simplest starting point.

*When* I am completing the checkin
*I want to* calculate and store my PHQ2 score
*so that* a further depression diagnosis can be performed per the protocol.

## Setting up the app

You should be able to run `bin/setup` to get everything up and running. Before you start, you should have:

* Ruby 2.5.1
* Postgres 9.4 or higher (we use 10.x)
* Some recent version of NodeJS
* Some recent version of Yarn

The setup process will create a patient in the database and we're ignoring the whole authentication process since we're interested in the problem we're solving, not the details about how a user authenticates in the app.
