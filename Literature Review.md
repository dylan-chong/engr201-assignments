# Available methods for finding security vulnerabilities in software.

#### Literature Review

## Abstract

    TODO LAST

-------------------------------------------------------------------------------

## Introduction

Security vulnerabilities in software can lead to security breaches by hackers,
which usually lead to data loss or corruption, denial of service issues, and
especially, privacy issues [2]. Breaches cost billions of dollars every year
[7]. A study of data security breaches showed that issues can reduce customer
trust in the affected company / organisation, while positively affecting
competitors [5]; this allows for the extortion of companies / organisations.
The number of security issues, especially for financial software, has increased
[3], potentially raising concerns about customer finances.

Effective security testing techniques can be used to detect vulnerabilities in
software, therefore reducing the probability of a breach. Effective techniques
are those that find a large number of vulnerabilities, with as few false
vulnerabilities as possible. They should be time and resource-efficent.

This review will be useful for security testing researchers, developers, as
well as executives who work for any organisation involved with software. This
review also provides areas that potentially need to be researched in this area.


## Definitions

This section outlines some existing security testing methods that have been
developed or used in testing methods described in the 'Available Security
Testing Methods' section.

### Fuzz Testing

Fuzz testing is a testing approach where different program inputs are
automatically executed against the Program Under Test (SUT), and if an
exception / error occurs, a potential security vulnerability is revealed.
Inputs are often automatically altered in order to generate new program inputs
for further testing [7]. The inputs for a single execution of the program make
up a single test case. All of the program inputs (i.e. all of the test cases)
make up a test suite.

Black-Box Fuzz testing methods do not require the source code to be able to
generate program inputs. White-Box Fuzz testing methods, by definition, require
access to the program source code or a executable binary of the program to
generate program inputs. Symbolic Execution can be used in White-Box Fuzz
testing methods - it involves inspecting the code to figure out all the
possible execution paths, and then figuring out what inputs are required in
order to ensure these paths are executed [7].

## Available Security Testing Methods

Much of the research into security testing in the last five years appears to
have focussed around the development of automated security testing methods.
SimFuzz expands on Black-Box Fuzzing in order to provide more thorough testing.
A STRIDE-based approach identifies high-risk test cases in an automatically
generated test suite in order to increase the efficiency of executing the
suite. Static Code Analysis tools inspect source code in order to find
vulnerabilities. Code Review is not an automated process, but is a way of
finding security vulnerabilities early in the development process. 

### SimFuzz

Zhang et al ([7]) proposed a new approach for generating and selecting test
cases for deep execution paths. It as been implemented in a tool called SimFuzz
for experimentation [7]. Deep execution paths are many in number so are very
time consuming to test manually, vulnerabilities are likely to be found in
these deep execution paths. The proposed approach uses a Test Case Similarity
metric (TCS) in order to find similar execution paths to some original deep
path - the resulting set of paths provide high testing coverage around the
original path.

#### Phases

The SimFuzz approach can be broken down into two phases.

The purpose of the first phase is to create a set of similar inputs that cause
similar deep execution paths, using a proposed Incremental Mutation process.
Begin with a valid input that creates a deep execution path, and break it into
small segments. For each segment, perform a slight alterations and add the
altered input to the set of test cases. Stop when TCS lowers beyond some
threshold is reached [7].

The second phase involves combining multiple test cases from the first phase in
order to create additional test case inputs. This is necessary for finding
vulnerabilities that are only possible when multiple parts of the input have
been malformed in specific ways, and also to make sure that related execution
paths are explored by the test cases [7].

#### Advantages and Limitations

The SimFuzz approach is very efficient because test cases are created
intentionally and selectively because only the important test cases are
executed - the existing White-Box testing approach using Symbolic Execution
creates a large number of test cases and don't filter any out, so the test
generation execution process can be very time-consuming, especially for large
programs. In comparison with the existing Fuzz testing approach, the SimFuzz
approach has a much higher coverage of deep execution paths because most test
cases generated by fuzzing only test shallow execution paths, due to the
randomness and therefore largely invalid inputs. Vulnerabilities are likely to
be found in these deep execution paths and some vulnerabilities are only
possible when certain conditions are met (i.e. the program must be in a deep
state) [7].

The experiments showed that the SimFuzz approach can be effective, but they may
not provide results that are representative of real programs - vulnerabilities
were intentionally added to the experimental programs, rather than accidentally
being introduced [7]. More testing is needed on large, real world software in
order to prove its effectiveness and reveal any flaws.


### STRIDE Risk Analysis and Threat Modelling

Palanivel and Kanmani [6] proposed a security testing process that adds the
STRIDE threat modelling approach used by Microsoft to an existing risk
analysis approach in order to select the highest priority tests from a
generated test suite. This reduces the amount of time required to execute the
test suite. The test suite can be generated by techniques such as Black or
White-Box Fuzz Test Generation [6].

It can be broken down into four phases: State Representation, Threat Modelling,
Risk Analysis, Test Case Selection. The State Representation phase involves the
identification of states and transitions (i.e. dependencies between states)
through the creation of an Extended Finite Machine diagram of the system. The
Threat Modelling phase involves using a state diagram to create a data flow
diagram, which is used with the STRIDE model to identify security threats are
possible in each state of the system. (STRIDE is an acronym for six different
type of threats - spoofing, tampering, repudiation, information disclosure,
denial of service and elevation of privilege.) The results from this phase are
used and the Risk Analysis phase, where a risk value is calculated for each
threat (using metrics such as risk impact - the number of (dependent) states
the threat could affect). Finally, the tests that involve a high number of high
risk states are selected from a generated set of test cases [6].

The proposed process was successfully able to reduce the generated test suite
size by 13-21% in the example cases [6], i.e. 13-21% low risk test cases were
removed. This shows that the proposed process was able to identify the high
risk test cases.

### Static Code Analysis Tools

Static code analysis tools inspect the source code of a software project to
detect a predefined range of vulnerabilities. A study compared several multiple
C code analysis tools by using them on software with known vulnerabilities.
Most of the tools, individually, were only designed to detect a limited range
of vulnerabilities. The vulnerability detection rate was too low for any of the
tools to be used as a primary method for security testing - at best, the
detection rate was 67%. These tools are easy to execute, however, results can
show false vulnerabilities, so the results of the analysis must be checked by a
developer [9].

### Manual Code Review

Manual Code Review, often referred to as just Code Review, is the process where
the project's source code is inspected. Developers visually inspect that they
did not write themselves [5] primarily for issues such as code style;
developers can also inspect the code for security vulnerabilities at the same
time. A study of thirty developers manually reviewing code of a small web
application showed that it is very unlikely for code reviewers to find all
vulnerabilities [8]. Code Review happens before the testing process in a
development cycle, so can find vulnerabilities early.

## Discussion

The SimFuzz approach can be combined with Palanivel and Kanmani's risk
analysis and threat modelling approach in order to prioritise the testing of
execution paths that involve high risk operations. Prioritised paths can then
be tested more thoroughly in order to increase the probability of finding
hidden vulnerabilities.

Zhang et al intend to extend the SimFuzz tool to work with binary executables
and web applications [7]. The application of the tool to the web could be
particularly useful especially in a language such as JavaScript which uses weak
typing - a feature that can cause unexpected issues to arise. The tool could
also be extended to simulate network connectivity quality, in order to test
states that can only be reached by corrupting incoming data. Potentially it may
be possible to simulate concurrent systems which are hard to test thoroughly
and prone to unpredictable behaviour at runtime - therefore it may be worth
testing these systems for vulnerabilities.

The STRIDE analysis approach was able to identify the high risk guest cases and
remove the low risk test cases from the generated test suite. The benefit of
this is the test suite execution process can be done in 13-21% less time than
if this STRIDE analysis approach was not applied. This proposed approach could
be used, not to speed up the test suite execution process, but to identify the
high risk test cases so that more similar cases can be generated - this would
allow high risk parts of the program under test to be tested more thoroughly.
The stride analysis approach could even be combined with the SimFuzz approach
for this purpose. Work is needed to determine the feasibility of this
approach.

Static code analysis tools tested by Diaz and Bermejo [9] only test for a
limited range of vulnerabilities, therefore it is not recommended to heavily
rely on these tools. Despite this, it is still highly recommended to use these
tools because they are easy to execute and they were still able to detect
37-67% of the vulnerabilities in the tested code [9]. More work is needed
identifying what static code analysis tools are effective for programming
languages other than C, as well as extending tools to detect a larger range of
vulnerabilities.

Manual Code Review is unlikely to reveal a high portion of the vulnerabilities
in software [5], so this method should not the primary method of security
testing. Developers may already do Manual Code Review for checking code style,
so additionally checking for security vulnerabilities would likely not take
much additional time. Therefore, it is recommended that this process should be
implemented and any organisation that creates or maintains software.

## Conclusion

    TODO ALMOST LAST

