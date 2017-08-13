# Available methods for finding security issues in software.

## Requirements

- Max 5 pages
- Focus on last 5 years
- Should contain:
    - Intro (short) to the field
    - Knowledge gaps (where more research is needed)
    - Compare techniques
        - Restrictions/when can they be used
        - Pros/cons
    - Conclusion
        - What future research should be
    - Ideally 10 peer-reviewed papers

## Notes

- RAFT // TODO
  - Role
  - Audience
  - Form
  - Tone

- 2.
    - "Purpose of security testing is identifying and removing the flaws
      through which any harmful attacks can fail the system functionalities"
    - "There is no boundary for software testing but one stage testing must be
      stopped because this is also a complexity factor"
    - A security violation could be damaging to assets, and
        - "Material and financially damaging to some person or assets is
          exactly case of security violation and its leads to failure and
          definitely it impacts on quality."
    - Software "quality is directly proportional to the credibility of the
      company."
    - "Software security testing defined as "To insure security that the
      software are safe and protects from unauthorized internal and external
      touch and serious damage."
    - Hackers may want to:
        - Find or delete data
            - (Cause privacy issues)
        - This will be harmful to the website, credibility of the company
        - "Security area may be affected by the hackers because they seeks and
          demolish the data from some unwanted mean of source which is harmful
          for website and it's lead to privacy leak."
        - And, the result of security violations usually lead to
            - Information loss or corruption
            - Privacy leaks
            - Denial of service
    - Network hackers can take advantage of security flaws in the network
        - Hacker can find how data flows through the network, and inject
          malicioius code
    - Flaws can come from:
        - Logical flaws in the software, from the development/design processes
        - Deployment issues when configuring the software on client systems
    - Security is required for every system - clients (desktops, mobile phones,
      etc), hosts (e.g. server that hosts website), and the network in between
    - [MAYBE NOT RELEVANT] "Database security is available now to prevent data
      from SQL injection which is very common strategy to trap the system."
    - "Good software security results software availability, reliability,
      confidentiality, security, credibility and degree of confidence."
    - Types of attacks
        - "Virus is a program that embeds itself in the software code portion
          and disturbs the execution according to desired."
        - "Stack Overflow is the flaw which is too much request send to some
          website and disturbs its handling request mechanism."
        - "Trojan horse a type or virus which propagates itself in the computer
          system."
        - "Trap door is the way through with the hacker can enter in system,
          its like the unsafe firewall or network unsecure layering."
    - Techniques
        - [NOT OFFICIAL ENOUGH?] Tester should think like a hacker

- 3.
    - System testing (larger than integration tests)
        - "cannot find every bug"
    - Unit testing
        - These are automated
        - Requires that the code be structured in a way that allows for testing
          the single component
            - Requires "craftsmanship and design sense"
            - If the existing code is not structured to be testable, the
              developer may feel discouraged from testing because takes a lot
              of time and work to restructure the code and then write tests for
              it
        - As long as the code is testable, the code could be written in any way
          and a bug (for example one that involves skipping a security
          protocol) could have been caught
            - [THOUGHT] This will only work for testing an existing security
              protocol
        - Code coverage tools can be used to find untested code
    - "Dogfooding"
        - The company relies on its own employees using its products
        - "in security situtations is not appropriate"
            - This is testing the success use cases (normal usage)
            - [THOUGH] because users wouldn't try to break the security on
              day-to-day use

- 4.
    - Intro/Abstract
        - "In today’s scenario, the number of vulnerabilities is enormously
          increasing leading to serious security threats in future."
        - "Security threats may arise due to distributed and heterogeneous
          nature of applications, their multilingual and multimedia features,
          interactive and responsive behavior, ever evolving third-party
          products and the rapidly changing versions"
        - "Recent report reveals the fact that security threats surrounding the
          financial applications have increased dramatically and they continue
          to evolve"
        - "Security testing is an effort to reveal those vulnerabilities, which
          may violate state integrity, input validity and logic correctness
          along with the angle of attack vectors that exploit these
          vulnerabilities. "
    - 5 Security Issues and Related Concerns
        - Static security testing
        - Dynamic security testing
            - Fuzz testing
                - A program generates random test cases and runs them on the
                  program to be tested
            - Concolic testing
                - ?
            - Search based security testing
                - ?
- 6.
    - $"See Workshop 2 exercise for more info"
    - "Testing is a process of identifying defects"
    - "Risk-oriented testing uses risk analysis results in test case
      identification, selection and assessment to prioritize and optimize the
      testing process" - select important test cases from a generated set of
      cases (see related works for generation)
    - Threat modelling
        - is looking at the system and finding possible vulnerabilities, and
          figuring out ways to protect the system against them
        - Involves looking at the system from an attacker's perspective as well
          as the perspective of each component in the software.
        - Microsoft's methods
            - STRIDE - To identify threats
                - Spoofing
                - Tampering
                - Repudiation
                    - https://www.owasp.org/index.php/Repudiation_Attack
                        - Make the system not track user actions properly? -
                          logs become incorrect
                    - https://en.wikipedia.org/wiki/Non-repudiation#In_security
                        - Non-Repudiation is the ability to prove data's
                          integrity and who it came from
                - Information Disclosure
                - Denial of Service
                - Elevation of Privelege
            - DREAD - for rating/comparing/prioritising threats
                - Damage
                - Reproducability
                - Exploitability
                - Affected users
                - Discoverability
    - Risk analysis
        - is taking threat modelling results and determining which
          vulnerabilities cause the most risk (potential damage) by potential
          threats
        - Risk-Driven Security Testing (RST)
            - "The aim is to focus the security testing process to carry out
              security tests on the most important parts of the System Under
              Test, and to execute only the selected test cases"
        - Test-Driven Security Risk Analysis (TSR)
            - Test the risk models (for testing correctness of the models)
        - In general, uses risk metrics:
            - Risk possibility - what STRIDE threats are possible
            - Risk impact - damage/number of other states affected
            - Risk threshold - the upper limit on how much the risk can be
              tolerated
- 7.
    - Breaches cost billions of $ per year
    - Fuzz testing (Black-box)
        - Cost-effective
        - Program is run against different sets of generated inputs.
            - If program throws an exception, then a potential security
              vulnerability is revealed
        - Good for finding input validation issues
        - Hard to test deep execution paths/states (because of randomness -- it
          needs to input several successful inputs in a row to get into deeper
          states)
            - Lots of random inputs are invalid. Invalid inputs are more likely
              to get rejected by the program, so the program is not going to
              follow a deep path
        - How to:
            - Randomly alter good inputs to create new ones, then run new ones
              on the program
    - Concolic testing (White-box)
        - Good for exploring all possible paths
        - Limited because logic can be too complex for a constraint solver, and
          system problems such as memory management which are not possible to
          solve with current knowledge
        - Limited on large programs because of rapid increases in the number of
          paths - exponential increase when adding conditions? - takes a long
          time for symbolic executions, solving constraints
        - How to:
            - Symbolic execution is used to determine a sequences of conditions
              on program state/inputs (by analysing the code) - a sequence is
              called a path condition. 
            - Conditions within the path condition can be altered to create
              alternate paths to be tested
            - A constraint solver is used to generate the inputs to meet the
              path condition.
            - Tests can then be run on the inputs
    - Proposed approach
        - Created a tool called SimFuzz to generate and execute test cases that
          involve deep execution paths
        - Test case similarity metric (TCS)
            - Two similar sets of inputs can cause the same path of the program
              to execute - semantically equivalent
        - Step 1 - Input Mutation
            - Alter inputs that cause deep execution paths aiming to find new
              paths that have high TCS - new ones that are similar are likely
              to execute another deep path similar to the original.
            - In order to test a deep state (which is reached by a deep path),
              a very similar path is required to get to the deep state.
              Multiple similar paths are required to thoroughly test the deep
              state. 
            - Proposed an Incremental Mutation process
                - Break valid input into small segments
                - Slowly increase the amount of mutation per segment, when
                  generating test cases, until you find some invalid inputs -
                  these have low TCS to the original input, so begin mutating
                  next segment... 
                    - This generates a set of inputs where each input has a
                      high TCS to the others
        - Stage 2 - Select test cases for testing deep execution paths
            - Combine similar cases from Stage 1 to find new inputs - high
              probability of finding other, similar deep paths
            - This is necessary in finding vulnerabilities that only can occur
              when multiple parts of an input have to be specifically malformed
        - Stage 3 (optional)
            - If there is not enough generated test cases from the previous
              stages (e.g. to provide sufficient code coverage), then this is
              required
            - Having a strictly high TCS requirement can cause a drop in the
              number of test cases. Running the process again with a lower
              requirement is one possible solution to increasing the number of
              test cases.
        - Benefits
            - It is a very efficient process because test cases are created
              intentionally and selectively because only the important test
              cases are executed - black-box fuzz testing and white-box
              concolic testing very create a large number of test cases and
              don't filter any out, so can be very slow.
            - Deep execution paths are time-consuming to test (there are many)
                - Testing usually occurs for functionalities (relatively
                  shallow paths)
                - So vulnerabilities from deep paths are less likely to be
                  found
                - Certain vulnerabilities only show up when certain conditions
                  are met
            - Effective in detecting "memory corruption vulnerabilities", such
              as array overflow issues in C
            - Doesn't require input specifications to 
        - Limitations
            - The experiments may not provide results that are representative
              of real programs because vulnerabilities were intentionally added
              to the experimental programs, rather than accidentally being
              introduced. 
            - [THOUGHT] A real world program is one that is used by government
              agencies, companies, etc.
            - [THOUGHT] The approach has not been applied in a real
              organisation in order to determine its real world effectiveness.
            - [THOUGHT] This approach can be combined with the previously
              mentioned risk analysis and threat modelling approach in order to
              select execution paths that are more likely to perform high risk
              operations. cut 
        - Future work
            - Extend the tool to work with 
                - binary executables
                - web applications
                - [THOUGHT] Could be useful for testing security software
                - [THOUGHT] Simulate concurrent systems and simulate
                  unpredictable external events such as network and storage
                  device connectivity - data transfer rate, response time, data
                  loss can all cause issues for the program
                    - Could be tricky to time concurrent system
                - [THOUGHT] Simulate network issues / data corruption
                - [THOUGHT] Add a focus for language features that commonly cause
                  problems - e.g. inputting objects of different types to check
                  for weak typing issues in JavaScript
    - How was it done
    - Who did it
        - Zhang et al.
    - What is different / innovative / advantageous
    - Any limitations / need for further research

## Workshop 1 exercise

Topic: Available methods for finding security issues in software
Research question: What combination of methods for finding software security
issues are the most effective?


- Topic: Available methods for finding security issues in software
- Research question: What combination of methods for finding software security
  issues are the most effective?
    - Security issues in software can lead to security breaches by hackers,
      which usually lead to data loss or corruption, denial of service issues,
      and especially, privacy issues [2]. These can cause severe financial,
      material and credibility problems for the company organisation under
      attack [2], not to mention the potentially damaging effect it could have
      for investors, related companies / organisations, and citizens/consumers.
    - A study of data security breaches showed that issues can reduce customer
      trust in the affected company / organisation, while positively affecting
      competitors [5]; this allows for the extortion of companies /
      organisations, especially by competitors.
    - The number of security issues, especially for financial software, has
      increased [3], potentially raising concerns about customer finances.
    - "Effective" means finding as many issues as possible while minimising the
      use of resources (such as time and money).
- Unneeded parts
    - [NOT RELEVANT] Testing takes time, and can potentially go on forever, so
      it must be stopped at some point [2]. Effective security testing methods
      are necessary for minimising the use of resources - important for a
    - [NEED SOURCE, NOT RELATED TO SECURITY] Ideally testing should be repeated
      for every single release of software, so the process can be very time
      consuming.
    - [NEED SOURCE?] Automated methods of testing, such as unit testing,
      contribute to long term confidence in security because the tests can be
      repeated quickly. However these methods may only be feasible for types of
      software.

## Workshop 2 exercise

Using source 6

### Notes

- Question/answer
    - What was done
        - Proposed a method of security testing that involves analysing the
          system for potential threats/risks, analysing them, and then
          prioritising test cases related to the risks
    - How does it work
        - Uses multiple methodologies together
        - Broken into 4 phases
            1. State Representation
                - Identify states and transitions (create an Extended Finite
                  State Machine diagram and text file)
                - Working out depenencies between states (if a state can be
                  affected by an attacker, then connected states can be
                  affected too)
            2. Threat Modelling (See above notes)
                - Use the state diagram to create a data flow diagram
                - Use STRIDE model for identifying threats for each state,
                  using the data flow diagram
            3. Risk Analysis (See above notes)
                - States with threats are assigned a priority by taking into
                  account:
                    - Risk possibility
                    - Risk impact
                    - Risk threshold
            4. Test Case Selection
                - Select generated test cases that involve many high-risk
                  states - these are executed first
                - Requires that test cases are generated
    - How was it done
        - By using the STRIDE model for threat modelling (identifying risks),
          different risk parameters
    - Who did it
        - Maragathavalli Palanivel and Kanmani Selvadurai
        - STRIDE is by Microsoft
    - What is different / innovative / advantageous
        - Optimises the testing by prioritising certain tests
            - Speed??
        - Finds greater number of risks / determines a larger
          impact/possibility of risks (3 fold) versus a similar security
          testing method
            - Similar method did:
                - not use threat modelling
                - used complexity and severity (what are these?) as risk
                  parameters instead of possibility/impact/threshold
    - Any limitations / need for further research
        - None stated

- QUEST
    - Questions
        - Is it the risk parameters or STRIDE that did the improvement?
        - Is there some use in the field?
        - Is making/updating the diagrams very time consuming?
        - Why optimisation necessary? Why is 13-21% reduction significant - is it?
    - Unhappy
        - 3x better? - How does risk value relate to actual risk?
        - EFSM coverage is not a measure of security
    - Excellent
        - Mostly detailed
    - Strengths
        - 
    - Themes
        - Message: To optimise the testing process?

### Summary

Palanivel and Kanmani [6] proposed a security testing process that adds the
STRIDE threat modelling approach used by Microsoft to an existing risk
analysis approach in order to select the highest priority tests from a
generated test suite. This reduces the amount of time required to execute the
test suite [6].

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

In comparison with the existing process, which did not use the STRIDE approach
for threat modelling and used different metrics in the Risk Analysis phase, the
proposed process yielded a three times greater total risk value; this implies
that it identified a greater number of risks / identified a greater impact for
the risks. The proposed process was successfully able to reduce the generated
test suite size by 13-21% [6].

## Workshop 3 Exercise

Note to self: This uses source 7 but does not include the description of fuzz
and concolic testing

### Overview 

<!-- Original (non-squashed)
Zhang et al ([7]) proposed a new approach for generating and selecting test
cases for deep execution paths. Deep execution paths are many in number so are
very time consuming to test manually, vulnerabilities are likely to be found in
these deep execution paths. Existing Fuzz and Concolic testing approaches
generate a large number of test cases, but most of these involve using inputs
that the program under test (PUT) would consider invalid. Invalid inputs do not
allow the program to follow deep execution paths because the program would not
progress far enough from the initial states (i.e. the program can only follow a
shallow execution path). The proposed approach uses a Test Case Similarity
metric (TCS) in order to find similar execution paths to some original deep
path - in order to have high coverage of deep program states, a set of similar
paths are required to since the program into related states. The proposed
approach has been implemented in a tool called SimFuzz for experimentation [7].
-->

Zhang et al ([7]) proposed a new approach for generating and selecting test
cases for deep execution paths. Deep execution paths are many in number so are
very time consuming to test manually, vulnerabilities are likely to be found in
these deep execution paths. The proposed approach uses a Test Case Similarity
metric (TCS) in order to find similar execution paths to some original deep
path - the resulting set of paths provide high testing coverage around the
original path. The proposed approach has been implemented in a tool called
SimFuzz for experimentation [7].

### Phases

The approach can be broken down into two phases, with an optional third phase
[7].

The purpose of the first phase is to create a set of similar inputs that cause
similar deep execution paths, using a proposed Incremental Mutation process.
Begin with a valid input that creates a deep execution path, and break it into
small segments. For each segment, perform a slight alteration and if the
resulting input creates an execution with a high TCS to the original, add this
to the set of test cases, and then repeat by performing a larger alteration.
This process creates a range of inputs that are as broad as possible while
still being able to focus on testing related execution path [7].

The second phase involves combining multiple test cases from the first phase in
order to create additional test case inputs. This is necessary for finding
vulnerabilities that are only possible when multiple parts of the input have
been malformed in specific ways, and also to make sure that related execution
paths are explored by the test cases [7].

The optional third phase is required only when there are not enough test cases
generated from the previous two stages in order to provide sufficient coverage
for the deep execution path. Because having a strictly high TCS requirement can
filter out a large number of generated test cases in the first phase, retrying
the entire process again with a lower TCS requirement can help to increase the
coverage of the deep execution path [7].

### Advantages and Limitations

It is a very efficient process because test cases are created intentionally and
selectively because only the important test cases are executed - the existing
Concolic testing approach creates a large number of test cases and don't filter
any out, so the test generation execution process can be very time-consuming,
especially for large programs. In comparison with the existing Fuzz testing
approach, it has a much higher coverage of deep execution paths because most
test cases generated by fuzzing only test shallow execution paths, due to the
randomness and therefore largely invalid inputs. Vulnerabilities are likely to
be found in these deep execution paths and some vulnerabilities are only
possible when certain conditions are met (i.e. the program must be in a deep
state) [7].

The experiments showed that the approach can be effective, but they may not
provide results that are representative of real programs - vulnerabilities were
intentionally added to the experimental programs, rather than accidentally
being introduced [7]. More testing is needed on large, real world software in order
to prove its effectiveness and reveal any flaws.

### Discussion

The proposed process by Zhang et al can be combined with the previously
mentioned risk analysis and threat modelling approach in order to prioritise
the testing of execution paths that involve high risk operations. Prioritised
paths can then be tested more thoroughly in order to increase the probability
of finding hidden vulnerabilities.

Zhang et al intend to extend the SimFuzz tool to work with binary executables
and web applications [7]. The application of the tool to the web could be
particularly useful especially in a language such as JavaScript which uses weak
typing - a feature that can cause unexpected issues to arise. The tool could
also be extended to simulate network connectivity quality, in order to test
states that can only be reached by corrupting incoming data. Potentially it may
be possible to simulate concurrent systems which are hard to test thoroughly
and prone to unpredictable behaviour at runtime - therefore it may be worth
testing these systems for vulnerabilities.

### References

[7] D. Zhang et al, "SimFuzz: Test case similarity directed deep fuzzing,"
Journal of Systems and Software, vol. 85, pp. 102-111, Jan. 2012.

## Resources

- Security testing techniques
    - 1.
        - Comparison of SETAM with security use case and security misuse case:
          A software security testing study
        - http://tewaharoa.victoria.ac.nz/primo_library/libweb/action/display.do?frbrVersion=5&tabs=viewOnlineTab&ct=display&fn=search&doc=TN_springer_jour10.1007%2fs11859-012-0880-x&indx=3&recIds=TN_springer_jour10.1007%2fs11859-012-0880-x&recIdxs=2&elementId=2&renderMode=poppedOut&displayMode=full&frbrVersion=5&frbg=&rfnGrpCounter=1&dscnt=0&scp.scps=scope%3A%28JNZS_vuw_ac_nz%29%2Cscope%3A%28Exams_vuw_ac_nz%29%2Cscope%3A%28NZJIR_vuw_ac_nz%29%2Cscope%3A%28researcharchive_vuw_ac_nz%29%2Cscope%3A%28NZREF_vuw_ac_nz%29%2Cscope%3A%28AJL_vuw_ac_nz%29%2Cscope%3A%28LEW_vuw_ac_nz%29%2Cscope%3A%28KOTARE_vuw_ac_nz%29%2Cscope%3A%28NZAROE_vuw_ac_nz%29%2Cscope%3A%2864VUW%29%2Cprimo_central_multiple_fe&tb=t&vl(547469497UI0)=any&fctV=%5B2012+TO+2017%5D&mode=Basic&vid=VUW&rfnGrp=1&srt=rank&tab=all&fctN=facet_searchcreationdate&dum=true&vl(freeText0)=testing%20software%20security&dstmp=1501195457681
        - https://link-springer-com.helicon.vuw.ac.nz/article/10.1007/s11859-012-0880-x
        - This references an older paper which I cannot find
    - 3.
        - Finding More Than One Worm in the Apple
        - http://tewaharoa.victoria.ac.nz/primo_library/libweb/action/display.do?frbrVersion=4&tabs=viewOnlineTab&ct=display&fn=search&doc=TN_acm2622630&indx=3&recIds=TN_acm2622630&recIdxs=2&elementId=2&renderMode=poppedOut&displayMode=full&frbrVersion=4&frbg=&rfnGrpCounter=1&dscnt=0&scp.scps=scope%3A%28JNZS_vuw_ac_nz%29%2Cscope%3A%28Exams_vuw_ac_nz%29%2Cscope%3A%28NZJIR_vuw_ac_nz%29%2Cscope%3A%28researcharchive_vuw_ac_nz%29%2Cscope%3A%28NZREF_vuw_ac_nz%29%2Cscope%3A%28AJL_vuw_ac_nz%29%2Cscope%3A%28LEW_vuw_ac_nz%29%2Cscope%3A%28KOTARE_vuw_ac_nz%29%2Cscope%3A%28NZAROE_vuw_ac_nz%29%2Cscope%3A%2864VUW%29%2Cprimo_central_multiple_fe&tb=t&vl(547469497UI0)=any&fctV=peer_reviewed&fctV=%5B2012+TO+2017%5D&mode=Basic&vid=VUW&rfnGrp=show_only&rfnGrp=1&srt=rank&tab=all&fctN=facet_tlevel&fctN=facet_searchcreationdate&dum=true&vl(freeText0)=testing%20software%20security&dstmp=1501299321432
        - http://dl.acm.org.helicon.vuw.ac.nz/citation.cfm?doid=2622628.2622630
    - 4.
        - [NEEDS READING] Security Testing
            - TODO Read sections
              - 3 Significance of Security Testing?
              - 5 Security Issues and Related Concerns
        - http://tewaharoa.victoria.ac.nz/primo_library/libweb/action/display.do?tabs=viewOnlineTab&ct=display&fn=search&doc=64VUW_INST51220259870002386&indx=2&recIds=64VUW_INST51220259870002386&recIdxs=1&elementId=1&renderMode=poppedOut&displayMode=full&frbrVersion=&frbg=&rfnGrpCounter=1&dscnt=0&scp.scps=scope%3A%28JNZS_vuw_ac_nz%29%2Cscope%3A%28Exams_vuw_ac_nz%29%2Cscope%3A%28NZJIR_vuw_ac_nz%29%2Cscope%3A%28researcharchive_vuw_ac_nz%29%2Cscope%3A%28NZREF_vuw_ac_nz%29%2Cscope%3A%28AJL_vuw_ac_nz%29%2Cscope%3A%28LEW_vuw_ac_nz%29%2Cscope%3A%28KOTARE_vuw_ac_nz%29%2Cscope%3A%28NZAROE_vuw_ac_nz%29%2Cscope%3A%2864VUW%29%2Cprimo_central_multiple_fe&tb=t&vl(547469497UI0)=any&fctV=%5B2012+TO+2017%5D&mode=Basic&vid=VUW&rfnGrp=1&srt=rank&tab=all&fctN=facet_searchcreationdate&dum=true&vl(freeText0)=%22find%20security%20issues%22%20OR%20%22testing%20security%22&dstmp=1501195247531
        - https://link-springer-com.helicon.vuw.ac.nz/chapter/10.1007/978-981-10-1415-4_3
    - 6.
        - Risk-driven security testing using risk analysis with threat modeling
          approach
        - https://springerplus.springeropen.com/articles/10.1186/2193-1801-3-754
        - http://tewaharoa.victoria.ac.nz/primo_library/libweb/action/display.do?frbrVersion=5&tabs=viewOnlineTab&ct=display&fn=search&doc=TN_springer_jour10.1186%2f2193-1801-3-754&indx=1&recIds=TN_springer_jour10.1186%2f2193-1801-3-754&recIdxs=0&elementId=0&renderMode=poppedOut&displayMode=full&frbrVersion=5&frbg=&dscnt=0&scp.scps=scope%3A%28JNZS_vuw_ac_nz%29%2Cscope%3A%28Exams_vuw_ac_nz%29%2Cscope%3A%28NZJIR_vuw_ac_nz%29%2Cscope%3A%28researcharchive_vuw_ac_nz%29%2Cscope%3A%28NZREF_vuw_ac_nz%29%2Cscope%3A%28AJL_vuw_ac_nz%29%2Cscope%3A%28LEW_vuw_ac_nz%29%2Cscope%3A%28KOTARE_vuw_ac_nz%29%2Cscope%3A%28NZAROE_vuw_ac_nz%29%2Cscope%3A%2864VUW%29%2Cprimo_central_multiple_fe&tb=t&vl(547469497UI0)=any&fctV=peer_reviewed&mode=Basic&vid=VUW&rfnGrp=show_only&tab=all&srt=rank&fctN=facet_tlevel&vl(freeText0)=security%20testing&dum=true&dstmp=1501907385085
    - 7.
        - SimFuzz: Test case similarity directed deep fuzzing
        - http://tewaharoa.victoria.ac.nz/primo_library/libweb/action/display.do?frbrVersion=4&tabs=viewOnlineTab&ct=display&fn=search&doc=TN_sciversesciencedirect_elsevierS0164-1212(11)00197-X&indx=2&recIds=TN_sciversesciencedirect_elsevierS0164-1212(11)00197-X&recIdxs=1&elementId=1&renderMode=poppedOut&displayMode=full&frbrVersion=4&rfnGrpCounter=1&rfnExcGrp=%3F&rfnExcGrp=%3F&dscnt=1&fctV=peer_reviewed&fctV=%5B2012+TO+2017%5D&vid=VUW&mode=Basic&mulExcFctN=facet_rtype&mulExcFctN=facet_rtype&fctExcV=reviews&fctExcV=newspaper_articles&rfnGrp=show_only&rfnGrp=1&tab=all&fctN=facet_tlevel&fctN=facet_searchcreationdate&vl(freeText0)=fuzz%20test&dstmp=1502578160772
        - http://www.sciencedirect.com.helicon.vuw.ac.nz/science/article/pii/S016412121100197X?via%3Dihub
- Showing impact of software security
    - 2.
        - QUALITY SOFTWARE & SECURITY TESTING AND ITS IMPACT ON SOFTWARE
          PRODUCT
        - This is not very good for finding techniques
        - http://tewaharoa.victoria.ac.nz/primo_library/libweb/action/display.do?tabs=viewOnlineTab&ct=display&fn=search&doc=TN_proquest1762123759&indx=2&recIds=TN_proquest1762123759&recIdxs=1&elementId=1&renderMode=poppedOut&displayMode=full&frbrVersion=5&frbg=&rfnGrpCounter=1&dscnt=0&scp.scps=scope%3A%28JNZS_vuw_ac_nz%29%2Cscope%3A%28Exams_vuw_ac_nz%29%2Cscope%3A%28NZJIR_vuw_ac_nz%29%2Cscope%3A%28researcharchive_vuw_ac_nz%29%2Cscope%3A%28NZREF_vuw_ac_nz%29%2Cscope%3A%28AJL_vuw_ac_nz%29%2Cscope%3A%28LEW_vuw_ac_nz%29%2Cscope%3A%28KOTARE_vuw_ac_nz%29%2Cscope%3A%28NZAROE_vuw_ac_nz%29%2Cscope%3A%2864VUW%29%2Cprimo_central_multiple_fe&tb=t&vl(547469497UI0)=any&fctV=peer_reviewed&fctV=%5B2012+TO+2017%5D&mode=Basic&vid=VUW&rfnGrp=show_only&rfnGrp=1&srt=rank&tab=all&fctN=facet_tlevel&fctN=facet_searchcreationdate&dum=true&vl(freeText0)=testing%20software%20security&dstmp=1501195581300
        - https://search-proquest-com.helicon.vuw.ac.nz/docview/1721566667/fulltext/C388CAFEDB6E4D5CPQ/1?accountid=14782
- Other
    - 5.
        - [HAVEN'T DONE MUCH READING] Trust considerations on attitudes towards
          online purchasing: The moderating effect of privacy and security
          concerns
        - http://tewaharoa.victoria.ac.nz/primo_library/libweb/action/display.do?frbrVersion=3&tabs=viewOnlineTab&ct=display&fn=search&doc=TN_gale_ofa480357447&indx=3&recIds=TN_gale_ofa480357447&recIdxs=2&elementId=2&renderMode=poppedOut&displayMode=full&frbrVersion=3&frbg=&&dscnt=0&scp.scps=scope%3A%28JNZS_vuw_ac_nz%29%2Cscope%3A%28Exams_vuw_ac_nz%29%2Cscope%3A%28NZJIR_vuw_ac_nz%29%2Cscope%3A%28researcharchive_vuw_ac_nz%29%2Cscope%3A%28NZREF_vuw_ac_nz%29%2Cscope%3A%28AJL_vuw_ac_nz%29%2Cscope%3A%28LEW_vuw_ac_nz%29%2Cscope%3A%28KOTARE_vuw_ac_nz%29%2Cscope%3A%28NZAROE_vuw_ac_nz%29%2Cscope%3A%2864VUW%29%2Cprimo_central_multiple_fe&tb=t&vl(547469497UI0)=any&vid=VUW&mode=Basic&srt=rank&tab=all&dum=true&vl(freeText0)=security%20issue%20%28%22citezen%22%20OR%20%22customer%22%29&dstmp=1501479487104
        - http://www.sciencedirect.com.helicon.vuw.ac.nz/science/article/pii/S0148296309001933?via%3Dihub
