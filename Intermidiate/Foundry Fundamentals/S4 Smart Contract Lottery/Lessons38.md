# Intro to fuzz testing
- ***Introducing fuzz testing in blockchain development, this lesson explores using random inputs for testing smart contracts, emphasizing the importance of mock functions and fuzz testing for secure and stable systems.***

## Fuzz testing
- Generally, `fuzz testing`, also known as `fuzzing`, is an automated software testing technique that involves injecting invalid, malformed, or unexpected inputs into a system to identify software defects and vulnerabilities. This method helps in revealing issues that may lead to crashes, security breaches, or performance problems. Fuzz testing operates by feeding a program with large volumes of random data (referred to as "fuzz") to observe how the system handles such inputs. If the system crashes or exhibits abnormal behavior, it indicates a potential vulnerability or defect that needs to be addressed.
- How can we apply this in Foundry?
- Let's find out by testing the fact that `fulfillRandomWords` can only be called after the upkeep is performed.
- Open `RaffleTest.t.sol` and add the following:

```javascript
import {VRFCoordinatorV2_5Mock} from "chainlink/src/v0.8/vrf/mocks/VRFCoordinatorV2_5Mock.sol";
```
- in the import section.

- 