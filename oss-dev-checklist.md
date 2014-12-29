Open Source Development Checklist
=================================

<style type="text/css">
  :target { border: 2px solid red; }
</style>

<p style="text-align: center; text-decoration: underline; font-size: 115%; color: red; " >DRAFT -- in progress</span>

This checklist is for developers and managers who are new to open
source practices.  It is based on our experiences working with many
different types of organizations (including for-profit corporations,
non-profits, and government agencies) that start or join open source
projects, or that engage contractors to do open source work.

We update this checklist based on our work with our own clients, on
our observations of various open source projects, and on feedback from
other firms doing similar consulting.

Version Control
---------------

* <a id="use-public-vc">**Use public version control from the start of development.**</a>

  From the moment the project first starts, keep everything in a
  public version control repository that can be accessed using an open
  source version control client.  (See ["Be Open From Day
  One"](http://opentechstrategies.com/resources#be-open-from-day-one)
  for why it is important to develop in the open from the beginning.]

  "Public" means that anyone with Internet access can check out a
  copy of the project, without needing to register an account on the
  version control site, and without being required to inform you or
  anyone else that they are checking out their own copy.  It does
  _not_ mean that anyone can check in changes to your copy, of course
  -- you manage that copy, so you always control who modifies it and
  how.

  We recommend [Git](http://git-scm.com/) as the version control
  system, with repository hosting on [GitHub](https://github.com/) or
  [Gitorious](https://gitorious.org/), both of which cost nothing for
  open source projects to use.  But if you prefer another version
  control system or another hosting site (including hosting the
  repository yourself), that's fine, as long as people can access the
  code using widely-used open source tools.

* <a id="vc-namespace">**Put repositories in one project-related namespace.**</a>

  Host all repositories under a single, project-related namespace.

  This does not mean the namespace must be the same as the project
  name; it just means there should be _one_ namespace, and it should
  be related to the project in some long-term way.

  For example, development in the OpenHMIS project is being led by a
  Pathways Community Network Institute (PCNI).  They have registered
  an organization account on GitHub,
  [github.com/PCNI](https://github.com/PCNI/), and all repositories
  related to the project live in that namespace, e.g.,
  [github.com/PCNI/OpenHMIS](https://github.com/PCNI/OpenHMIS),
  [github.com/PCNI/outreach-app](https://github.com/PCNI/outreach-app),
  etc.

  The goal of this advice is to avoid having parts of a project spread
  out across the GitHub accounts of various individuals or
  contractors.  It's fine for people to have unofficial forks of a
  project in their own accounts.  But in order to ensure that the
  latest development sources are always easily recognizeable, there
  should be a policy that any development work that is incorporated
  into the project goes immediately into the appropriate official
  repository -- indeed, the way one can tell that a change has been
  officially incorporated into the project is precisely by the fact
  that it has entered one of the official repositories.

* <a id="vc-docs-etc" >**Version documentation, design diagrams, etc, as well as code.**</a>

  TBD

* <a id="vc-sources-only" >**Version source files, not generated files.**</a>

  TBD

* <a id="commit-often" >**Commit frequently -- don't wait until something is perfect.**</a>

  TBD

* <a id="placeholders-for-sensitive-data" >**Store placeholder templates for passwords, live server configuration, etc.**</a>

  TBD

* ...

Documentation
-------------

* <a id="doc-audience" >**Document with a target audience in mind.**</a>

  TBD

* <a id="doc-format" >**Write documentation in Markdown format.**</a>

  TBD.  Note the Markdown preview tools that are available.

* <a id="overview-in-readme" >**Put overview documentation into `README.md`.**</a>

  TBD.  Distinguish between README and INSTALL files.

* <a id="separate-install-doc" >**Put overview documentation into `INSTALL.md`.**</a>

* <a id="publish-license" >**Use a LICENSE.md file so people know the code is open source.**</a>

  TBD.  Include links to advice on choosing a license.

* <a id="dev-docs" >**Document all needed test servers, etc**</a>

  TBD.  Really this is about developer documentation in general.

* ...

Bug Tracking
------------

* ...

Communications
--------------

* <a id="use-project-forums" >**Use the project's discussion list, not private emails.**</a>

* ...

Special notes contractors:
--------------------------

* <a id="use-right-namespace" >**Use the project's namespace consistently.**</a>

   For example, if you're a contractor writing code for a project
   whose home site is [openhmis.pcni.org](http://openhmis.pcni.org/),
   then in Java package names use _"org.pcni.openhmis"_, not
   _"com.yourcompanyname"_.

* ...
