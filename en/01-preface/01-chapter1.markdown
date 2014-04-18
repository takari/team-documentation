# Preface

## Welcome from Jason van Zyl

Maven has been around for 10 years. The idea for the project predates the
release by several years, but the tool you know as Maven has had a 10th birthday
this year. During that decade, while the tool has changed, the core assumptions
and conventions have stood the test of time. Ten years later, Maven is used in
some of the biggest projects in the industry, and the tool has helped to create
a healthy ecosystem of open source development, because it made it easy to share
components.

The existence of a central repository for Java components is something all Java
developers are now used to, and Maven was the project that established the first
central repository for Java. The idea of convention over configuration for Java
projects remains important to the projects I work with every day, almost 10
years later. Other build tools have attempted to create new standards and build
conventions, yet Maven still provides the best balance between convention and
flexibility.

If you want your organization to focus on delivering software and if you want
to avoid creating custom build scripts that are difficult to understand and
maintain, you use Maven. It provides a model that is easy to understand, and it
can be adapted to meet most requirements.

What is also became clear over these 10 years is that Maven's conventions are
not for everyone, and this is to be expected. When I hear that people are
dissatisfied with Maven or when people call it inflexible and broken, I agree.
Maven isn't aiming to be everything to every build engineer. If you don't follow
the conventions it has clearly outlined, it is inflexible or broken. The tool is
opinionated, and if these opinions are in conflict with your own, then the
answer is to innovate.

Takari's TDM (officially known as Takari Distribution including Maven) is
Takari's attempt to address several key issues with Maven in a distribution that
is aimed at large-scale projects. In my own work with Maven I came to the
realization that it was time to build a set of extensions and customizations on
top of Maven that would allow it to stay as strong over the next ten years as it
has been over the last.

While features like incremental builds and faster parallel builds will
certainly be relevant to all Maven users, these features have been designed to
address the needs of build at scale.

## Who is this book for?

This book is written for users who have experience with Maven. While
Takari does offer Maven training for users, this book will assume that
you are familiar with basic Maven concepts such as the POM or the
Maven Lifecycle. With TDM, Takari wanted to make sure that we were
focused on addressing critical gaps in Maven's core and Maven's
plugins. Good Maven documentation isn't one of these gaps, and if you
are looking for practical information about Maven's basic concepts, we
encourage you to browse the Maven project web site:
http://maven.apache.org

This book is written for any someone currently using Maven or for
someone evaluating using the TDM distribution to improve an existing
Maven build.

## How to read this book

The TDM book has been written as a comprehensive reference to the
features offered by TDM. If you are new to TDM we encourage you to
read the introduction, but if you are only interested in learning how
to use a specific feature or plugin you will be able to skip to an
individual chapter and get started.

We wrote each chapter as a stand-alone document that can be used
independent of other parts of this book, and when necessary we will
include a cross-reference to a related section in another chapter.

## How to Contact Takari

Takari is available if you have questions about the TDM distribution,
questions about support, or if you have a suggestion for a new
feature.  We're very interested in your feedback and suggestions.

To get in touch with Takari, we encourage you to send an email to
team@takari.io

### Takari Maven Training

Takari offers virtual training for Maven and custom training classes
for Takari's TDM distribution.

Takari's Introduction to Maven is a virtual training course that was
designed to focus on practice not theory. This course is designed to
bring everyone up to a base line of knowledge so teams can collaborate
on Maven projects more effectively.

For more information about Takari's Maven training, email
team@takari.io.

### Takari Subscription

Takari offers support for Maven and the TDM distribution with a
subscription to the TDM distribution. If your organization depends on
Takari, we encourage you to subscribe to our commercial offering for
the latest updates and information about the TDM distribution as well
as for early-access to features included in the TDM distribution.

With a Takari subscription you'll have the ability to receive direct
support from Takari's team of open source experts.

## Acknowledgements

The authors of this book would like to acknowledge the customers of
Takari for supporting sustainable open source development.
