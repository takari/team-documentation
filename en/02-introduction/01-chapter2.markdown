# Introduction

This book was created to document the plugins and features available
in the Takari Distribution including Maven (TDM). This introduction
defines what the TDM distribution is and also introduces the company
behind this new distribution.

## What is TDM?

TDM stands for the Takari Distribution including Maven.  TDM is a
collection of supported Maven plugins and extensions to core Maven
that is made freely available by Takari. Takari is regularly released,
with releases every 30-60 days depending on the current development
schedule. 

TDM was created to address several shortcomings in the "stock"
Maven distribution and TDM includes the following features beyond that
of Maven:

1. Support for incremental build operations

1. An intelligent approach to the paralleliation of Maven builds

1. An alternative to SNAPSHOT releases called Generations

### Video Overview: What is TDM? 

TODO


### TDM: Advanced Use Cases for Maven

While TDM's features are relevant to all Maven users, these features
and plugins were designed to support development at scale on projects
with hundreds or thousands of developers.  These advanced builds are
often characterized by large networks of interdependent groups
building and delivering a steady stream of software to production
dealing with challenges that arise when an organization has a a large
number of components with often conflicting release schedules.

On such large projects the key to success is agility, the pace with
which new features can be implemented and additional releases can be
delivered. These project can rarely stop and wait for a formal release
process that takes hours to complete and individual developers are
most productive when they can focus on incremental builds that don't
cause the to set aside hours or days for integration.

TDM can be used by any Maven user, but TDM was specifically designed
for the needs of large software projects. The features added to TDM
cater to issues that arise when hundreds or thousands of developers
are collaborating on fast-moving projects.

One thing that you will not find in the TDM distribution is training
material aimed at first-time Maven users. While Takari will go out of
our way to ensure that TDM is well documented, we encourage new Maven
users to look elsewhere for introductory material.  The Maven
project's web site is a good starting point: http://maven.apache.org

### What is Takari?

Takari is a company founded by Jason van Zyl focused on creating
software to manage component-based development and to support builds
at scale. Takari's developers bring multiple decades of experience
building software systems, creating and documenting large open source
projects including Maven among others.

### Video Overview: What is Takari? (2 minutes)

TODO

### Sustainable Open Source Development

Takari is committed to practicing sustainable open source development
and building a community that understands exactly how open source
developers and community members must be active participants to ensure
the ongoing health of an open source project.

### Integrity and Authenticity

As open source developers we believe in doing the right thing, in a
reliable way and are committed to being genuine in our actions and
reactions. Everyone from our developers to our executives understands
that our actions must be consistent with our community.

### Our Customers are Our Investors

Our customers fund our day-to-day operations by paying for our
training, services and products. We answer to our customers so we can
continue to focus our energy where it matters most — on creating
high-quality, useful products for the community.

### Community Support is Key

Staying involved and continuing to support the projects that are such
a large part of where we came from is important to us. While we are
focused on delivering quality software to our supporters we are also
cognizant of the larger community.

## Evolving Challenges: Builds at Scale

Takari's efforts related to TDM are influenced by the following
industry trends:

### Changing Technology: Changing Conventions

What worked 10 years ago may not be appropriate for today’s builds,
but the core concepts that drove the creation of Maven are still
valid. Convention over configuration is even more appropriate now than
it was then given the amount of variation introduced by polyglot
development. With new languages, new production architectures, and a
growing array of tools, Maven needs more than just a few new plugins
to support new tools. It needs a comprehensive overhaul to allow for
continued adaptation.

Incremental and parallel build improvements allow Maven to be used for
a number of use-cases such as incremental compilation, incremental
processing of Javascript resources, and other requirements which may
not have been of primary concern in 2004.

TDM updates the concept of SNAPSHOTS for complex projects and replaces
that with generations. This is an approach to tracking software
releases and relating specific point-in-time releases to a commit or
branch in distributed version control.

Over time TDM will release updates to the core APIs and models of
Maven to allow for easier integration with different languages, tools,
and technology.  It is Takari's goal to make sure that TDM's regular
releases can fill in the gaps between Maven's far less frequent
releases so that changes in technology can be quickly addressed by
TDM.

### Faster Lifecycles: More Frequent Releases

When Maven was created we were aiming at project that needed to
conduct a weekly or monthly software release for relatively
well-defined project. When Maven was still new, the industry didn't
have projects beyond a certain level of complex because the easy,
component-based approach to development in Java hadn't yet been
enabled by Maven. Projects were more limited in scope then they are
today. In addition to differences in scope, projects weren't nearly as
complex and interdependent as projects Takari supports in the field in
2014.

Today, we see large organizations with hundreds or thousands of
developers. These organizations are building very complex,
interdependent systems which depend upon Maven to facilitate both
continuous integration and software releases. Where a company may only
push to product once a month in 2004, that same company expects to be
able to push to production as often as possible even multiple times a
day. This is the emerging reality of enterprise software development
and Maven's legacy approach to Releases and SNAPSHOTs does not lend
itself to these, more frequent workflows.

TDM's generations features as well as incremental and parallel builds
are aimed squarely at created more timely and efficient builds for
organizations that are looking to push to production frequently.