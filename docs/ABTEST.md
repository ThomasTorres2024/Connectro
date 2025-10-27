# A/B Testing Plans - Connectro
---

## Greg Piturro A/B Test
Test 1: Translated Documents Screen Placement
- US # ???
- Measures average number of documents created by active users per day
- Hypothesis: having the Translated Documents screen in a settings/profile page as well as being able to see newly translated documents, after a translation, will result in a greater number of average documents created by active users per day.
- About 10-15% of users will be able to see the experiment. Adding an extra way to view Translated Documents on paper sounds like a good quality of life feature. Although it may not be completely necessary and may have no impact on user retention. If anything, the app is designed to thrive on ease of use and thus, more buttons and screens may actually harm user retention.
- Variations: ???

Thomas Torres A/B Test design Contribution
* A/B Test Name: Separate Document Sheet for Translation or Same Sheet With Radio Buttons
* User Story Number : US4 (Golde Path)
* Metrics: User Engagement
* Hypothesis: The problem I want to solve on this app is navegability versus functionality for our userbase. On one hand we are trying to make the app more navegable for people who are not very good with technology, and on the other we might not be able to have features that could make the app more appealing to other audiences due to this restriction. I think one way that we can get more documents to be produced is to expand the given choice of languages the user can translate a document to, but this has to be counterbalanced with UI changes to make it friendlier to work with. The changes I want to implement here involve if the output for language page should be either a dropdown menu with many more language choices on another page separate from the translate page, or if it should be grouped together in the same step.  I think this part could be particularly confusing in terms of the UI for some people, but I also think that we add more flexibility to the app and could broaden its appeal on the market.  If we can increase the total number of documents per user over some period of time, then we are benefitting the user. The total number of documents produced should increase here with either one method or the other method for their respective groups. The UI changes will make the app more navegable on one version, and less on another. If we examine the total number of documents produced by user per group (which is one of our metrics we defined in the HEART sheet), then we can use the feature which has a higher resulting document translation.
* Experiment - Firebase records the total number of items checked on the radio button for target languages/dropdown menus, which results in a new document for each selection. We can take account of the total number of docs per active users and see how being a part of the radio button group is compared to the other one.
* Firebase Capabilities - We would want to try out these features with people who use the app a lot and make a lot of documents. If they are translated a lot, odds are they're going to run into someone who speaks a different language then English, Spanish, Portuguese, or Ukraninian, so having this feature will be vital to them less so than a user who sometimes translate documents. The % of users that are doing this is going to be lower, but what we could do is we could implement if for the users that have a weekly document output of at least $x$. Every time a document is created by one of these users, it is tracked, and we compare the total number of documents since they got their changes.  
* Variations - I want to try a dropdown menu that has a large list of languages that might not be fun to navigate, maybe a dropdown menu crossed with a search bar that you can check but maybe that will be confusing. Maybe I could have a section where users type their desired languages and it pops up.

This is the layout I would use for this section:

<img width="376" height="765" alt="image" src="https://github.com/user-attachments/assets/fe1dfde5-3142-446c-b629-cbbcfbff426c" />

## Elton Baidoo A/B Test

Profile Photo Placement
User Story: US# ??? (Profile Screen - User views another user's profile)
Metrics: 
- Primary: Profile engagement time (seconds spent on profile)
- Secondary: Profile completion rate for own profile
- Tertiary: Connection request rate
**Hypothesis**: 
Having a large, prominent circular profile photo at the top center of the profile screen will result in greater user engagement and higher connection request rates compared to a smaller left-aligned photo with bio text beside it. We believe that a centered, large photo creates a stronger first impression and draws users' attention immediately, encouraging them to spend more time viewing the profile and initiating connections. The centered layout also creates a cleaner, more modern mobile-first design pattern that users are familiar with from other social/networking apps.

**Experiment Details**:
- **Duration**: 2 weeks minimum (to capture full user activity cycle)
- **Sample Size**: 10-15% of active users will see Version B (variant)
- **Audience Targeting**: All users viewing profiles (both new and existing users)
- **Randomization**: Firebase will randomly assign users to see either Version A or Version B when viewing ANY profile
- **Data Collection**: Firebase Analytics will track:
  - Time spent on profile screen
  - Scroll depth on profile
  - Connection button taps
  - Profile edit initiations (for own profile)
  - Return visits to same profile

**Variations**:

 Version A (Control) - Large Centered Photo
- Layout: 
  - Profile photo: 120x120px circular image, centered at top
  - Name and headline: Centered below photo
  - Bio: Full-width text block below name
  - Interests/tags: Below bio
  - Action buttons: "Connect" button prominent below bio
  
- **Visual Hierarchy**: Photo → Name → Bio → Interests → Actions

#### Version B (Variant) - Small Left-Aligned Photo with Side Bio
- Layout:
  - Profile photo: 80x80px circular image, aligned to left
  - Name, headline, and first 2 lines of bio: Right side of photo
  - Full bio: Below photo/name section
  - Interests/tags: Below bio
  - Action buttons: Same placement as Version A

- **Visual Hierarchy**: Photo + Name/Bio (side-by-side) → Full Bio → Interests → Actions

**Success Criteria**:
- **Win**: Version that shows ≥10% improvement in connection request rate AND ≥5% improvement in avg. engagement time
- **Statistical Significance**: p-value < 0.05
- **Minimum Sample**: 500 profile views per variation

**Expected Outcome**:
Version A (large centered photo) will likely perform better because:
1. Mobile users expect centered, prominent photos (Instagram, LinkedIn pattern)
2. Larger photo creates emotional connection faster
3. Simpler visual hierarchy = easier to scan
4. More space for photo helps with facial recognition/trust

However, Version B might win if:
1. Users prefer information density (bio visible immediately)
2. Smaller photo reduces page load time significantly
3. Side-by-side layout works better on larger screens

**Implementation Notes**:
- Use Firebase Remote Config to toggle between layouts
- Ensure both versions are mobile-responsive
- Track A/B assignment in user properties for consistency (same user always sees same version)
- Monitor for any bugs or UX issues specific to either version

**Rollout Plan**:
1. Week 1-2: Run experiment with 10-15% of users
2. Analyze data after 2 weeks
3. If winner is clear, gradually roll out to 50% → 100% over 1 week
4. Monitor metrics for 1 week post-rollout to confirm sustained improvement
