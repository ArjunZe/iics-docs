# Use your business case to determine your usage of IICS

Use this play to:

- Figure out where to start when creating a new integration.
- Ensure technical usage of IICS is driven by use cases and business outcomes.

## Step 1: Understand the business need

Understand the business needs behind the integration you need to create.
A business need is described by the capabilities that the desired integration will enable.
In contrast, a business need is not "we need data copied into this database".
Ask "why?" to dig deeper and go beyond technical details in these initial discussions.

Example: "Our business need is to show a student's schedule in our system so that they don't need to manually copy and paste their schedules between systems."

## Step 2: Translate the business need into technical details

Based on the business need, determine which service(s) of IICS you will need to use.
A common technical detail of an integration is how often data is refreshed.
Some integrations will require data to be updated in near-real-time, while others can run on a scheduled basis, such as daily.

Near-real-time integrations are better suited for IICS Cloud Application Integration (CAI), while scheduled or "batch" integrations fit well with Cloud Data Integration.

Make sure the decision of how often data is refreshed, and therefore which IICS service to use, is based on the business need.

Examples:

- ✅ Based on the business need: "We need to update student schedule information in near-real-time because students will use this system immediately after updating their class schedule."
- ❌ Not based on the business need: "We can update student schedule information on an hourly basis. We don't want to overload our server."

## Step 3: Start small and iterate

Avoid gathering an exhasutive list of requirements at the beginning.
Get enough information to get started, implement, demonstrate the integration at work, get feedback, and make improvements.
Business needs will evolve, and that requires integrations to be flexible to change. 
