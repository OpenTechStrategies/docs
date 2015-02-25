<h1 style="text-align:center;">Open Source Development Contracting Checklist</h1>

<p style="font-size: 85%; text-align: center;" >published under a <a
href="https://creativecommons.org/licenses/by-sa/4.0/" 
>Creative Commons Attribution-ShareAlike 4.0</a> license</p>

<h4 style="font-style: italic; font-weight: bold; text-align: center;"
>(DRAFT -- in progress)</h4>

This checklist is for developers and managers who are new to open
source practices.  It is written both to help you draft contracts that
are intended to procure open source results, and to help you work with
the development team once the contract is under way.

This checklist is based on our real-world experiences with many
different types of organizations (for-profit corporations,
non-profits, and government agencies) that start open source projects
or join them, and that engage contractors to do open source work.  We
update this checklist as needed, based on our work with our own
clients, on our observations of various open source projects, and on
[feedback](https://github.com/OpenTechStrategies/checklist/issues)
from others.

Version Control
---------------

* <a href="#use-public-vc" id="use-public-vc">**Public version control from start of development.**</a>

  From the moment the project first starts, keep everything in a
  public version control repository that can be accessed using an open
  source version control client.  (See ["Be Open From Day
  One"](http://opentechstrategies.com/resources#be-open-from-day-one)
  for why it is important to develop in the open from the beginning.)

  "Public" means that anyone with Internet access can check out a copy
  of the project, without needing to register an account on the
  version control site, and without being required to inform you or
  anyone else that they are checking out their own copy.  It does
  _not_ mean that random people can check in changes to your copy,
  naturally -- you manage that copy, so you control who modifies it
  and how.

  We recommend [Git](http://git-scm.com/) as the version control
  system, with repository hosting on [GitHub](https://github.com/) or
  [Gitorious](https://gitorious.org/), both of which cost nothing for
  open source projects to use.  But if you prefer another version
  control system or another hosting site (including hosting the
  repository yourself), that's fine.  The important thing is that it
  be public, and that people can access the code using common
  open source tools.

* <a href="#public-vc-is-master" id="public-vc-is-master">**Public repository as the development master.**</a>

  For example, see https://tech.dropbox.com/2014/07/open-sourcing-our-go-libraries/ :

  "To make sure that we continue to invest in this open source effort, we are committed to using the public version of this repository internally. We are migrating our internal systems to use the libraries directly from this repository. This ensures all fixes and improvements are applied publicly before they are pulled back internally."

* <a href="#vc-namespace" id="vc-namespace">**Related repositories in one project-related namespace.**</a>

  Host the project's repositories in a single, project-related
  namespace.

  This does not mean the namespace must be the same as the project
  name; it just means there should be _one_ namespace, and it should
  be related to the project in some long-term way.

  For example, development in the OpenHMIS project is being led by
  Pathways Community Network Institute (PCNI).  They have registered
  an organization account on GitHub,
  [github.com/PCNI](https://github.com/PCNI/), and all repositories
  related to the project live in that namespace, e.g.,
  [github.com/PCNI/OpenHMIS](https://github.com/PCNI/OpenHMIS),
  [github.com/PCNI/outreach-app](https://github.com/PCNI/outreach-app),
  etc.

  The purpose of this policy is to avoid having parts of a project
  spread out across the GitHub accounts of various individuals and
  contractors.  When a project is spread out like that, it's difficult
  for people to figure out what they need to watch, or where they
  should obtain source code from.  It's fine for developers to have
  unofficial forks of a project in their own accounts, of course.  But
  the latest official development sources should always be easily
  identifiable by their location in the official namespace.  When a
  change is checked in to one of the official repositories, that means
  the change has been accepted by the project.

* <a href="#vc-docs-etc" id="vc-docs-etc" >**Version documentation, design diagrams, etc, like code.**</a>

  If you have design documents, diagrams, and anything else that would
  help a newcomer understand the project, keep them in the version
  control repository too.

  Sometimes these documents are written in a real-time collaborative
  editing environment such as Google Docs.  If the docs are still
  being actively edited there, then

  1. Make sure the live copies are readable by anyone;
  2. Link to them from the documentation in the version control repository;
  3. Save checkpointed versions in the repository now and then,
     but at the top of each checkpointed copy, link to the live online
     copy, so people know where to get the latest material.

* <a href="#vc-sources-only" id="vc-sources-only" >**Version source files, not generated files.**</a>

  TBD

* <a href="#build-system" id="build-system" >**Use a build system.**</a>

  TBD

* <a href="#commit-often" id="commit-often" >**Commit frequently -- don't wait until perfect.**</a>

  TBD

* <a href="#commit-messages" id="commit-messages" >**Write proper commit messages.**</a>

  TBD.  See http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

* <a href="#placeholders-for-sensitive-data" id="placeholders-for-sensitive-data" >**Store placeholder templates for passwords, live server configuration, etc.**</a>

  TBD

* ...

Documentation
-------------

* <a href="#doc-audience" id="doc-audience" >**Document with target audience in mind.**</a>

  TBD

* <a href="#doc-format" id="doc-format" >**Documentation in Markdown format.**</a>

  TBD.  Note the Markdown preview tools that are available.

* <a href="#overview-in-readme" id="overview-in-readme" >**Overview documentation in `README.md`.**</a>

  TBD.  Distinguish between README and INSTALL files.

* <a href="#separate-install-doc" id="separate-install-doc" >**Installation documentation in `INSTALL.md`.**</a>

* <a href="#publish-license" id="publish-license" >**LICENSE.md file contains open source license.**</a>

  TBD.  Include links to advice on choosing a license.

* <a href="#dev-docs" id="dev-docs" >**Document test servers, etc.**</a>

  TBD.  Really this is about developer documentation in general.

* ...

Bug Tracking
------------

* ...

Communications
--------------

* <a href="#use-project-forums" id="use-project-forums" >**Use project discussion list, not private email.**</a>

* ...

Special notes for contracting:
------------------------------

* <a href="#require-apis" id="require-apis" >**Require APIs and full import/export capability.**</a>

  TBD. Just being open source isn't enough; the software needs to be
  programmatically driveable, including the ability to get all data in
  and out.

* <a href="#use-right-namespace" id="use-right-namespace" >**Use project namespace consistently.**</a>

   For example, if you're a contractor writing code for a project
   whose home site is [openhmis.pcni.org](http://openhmis.pcni.org/),
   then in Java package names use _"org.pcni.openhmis"_, not
   _"com.yourcompanyname"_.

* ...
