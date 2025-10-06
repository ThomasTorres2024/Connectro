# Contributing to Connectro

We welcome contributions from all team members! This document outlines our workflow and standards.

## Table of Contents

- [Getting Started](#getting-started)
- [Branching Strategy](#branching-strategy)
- [Commit Message Conventions](#commit-message-conventions)
- [Pull Request Process](#pull-request-process)
- [Code Standards](#code-standards)

## Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/ThomasTorres2024/Connectro.git
   cd Connectro
   ```

2. **Install dependencies**
   - Ensure Flutter SDK is installed
   - Run `flutter pub get` in the `/src` directory
   - Set up Firebase CLI if working on backend features

3. **Configure your IDE**
   - VS Code or Android Studio recommended
   - Install Flutter and Dart plugins
   - Configure Dart formatter to run on save

## Branching Strategy

We use a feature branch workflow:

### Branch Naming Convention

- `feature/<description>` - New features (e.g., `feature/user-authentication`)
- `fix/<description>` - Bug fixes (e.g., `fix/login-crash`)
- `docs/<description>` - Documentation updates (e.g., `docs/api-endpoints`)
- `refactor/<description>` - Code refactoring (e.g., `refactor/database-queries`)
- `test/<description>` - Test additions or modifications (e.g., `test/auth-unit-tests`)

### Workflow

1. **Create a branch from main**
   ```bash
   git checkout main
   git pull origin main
   git checkout -b feature/your-feature-name
   ```

2. **Work on your branch**
   - Make commits regularly with clear messages
   - Keep commits focused and atomic
   - Push your branch to remote frequently

3. **Stay updated**
   ```bash
   git fetch origin
   git rebase origin/main
   ```

4. **Open a Pull Request** when ready for review

## Commit Message Conventions

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- `feat` - A new feature
- `fix` - A bug fix
- `docs` - Documentation changes
- `style` - Code style changes (formatting, missing semicolons, etc.)
- `refactor` - Code refactoring without changing functionality
- `test` - Adding or updating tests
- `chore` - Maintenance tasks, dependency updates, etc.
- `perf` - Performance improvements

### Examples

```
feat(auth): add Google sign-in integration

Implemented OAuth flow for Google authentication using Firebase Auth.
Includes error handling and user profile sync.

Closes #42
```

```
fix(ui): correct button alignment on profile page

The save button was overlapping with the profile picture on small screens.
Adjusted padding and added responsive constraints.
```

```
docs: update Firebase setup instructions

Added steps for enabling Firestore and Storage.
Included screenshots of Firebase console configuration.
```

### Commit Best Practices

- **Use present tense** ("add feature" not "added feature")
- **Use imperative mood** ("move cursor to..." not "moves cursor to...")
- **Keep subject line under 50 characters**
- **Capitalize the subject line**
- **Do not end subject line with a period**
- **Separate subject from body with a blank line**
- **Wrap body at 72 characters**
- **Reference issues and PRs in the footer**

## Pull Request Process

### Before Opening a PR

1. **Ensure your code works**
   - Test your changes locally
   - Run `flutter analyze` to check for issues
   - Run `flutter test` to ensure tests pass

2. **Update documentation**
   - Update README if needed
   - Add inline code comments for complex logic
   - Update relevant docs in `/docs`

3. **Clean up your commits**
   - Consider squashing WIP commits
   - Ensure commit messages follow conventions

### Opening a PR

1. **Push your branch**
   ```bash
   git push origin feature/your-feature-name
   ```

2. **Create Pull Request on GitHub**
   - Use a clear, descriptive title
   - Fill out the PR template completely
   - Reference related issues (e.g., "Closes #42")
   - Request review from at least one team member

### PR Template

```markdown
## Description
Brief description of what this PR does.

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## How Has This Been Tested?
Describe the tests you ran and their results.

## Checklist
- [ ] My code follows the project style guidelines
- [ ] I have performed a self-review of my code
- [ ] I have commented my code where necessary
- [ ] I have updated the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix/feature works
- [ ] New and existing tests pass locally

## Screenshots (if applicable)
Add screenshots to help explain your changes.

## Related Issues
Closes #(issue number)
```

### Review Process

- **All PRs require at least 1 approval** before merging
- **SCRUM Master has final merge authority**
- Address all review comments before requesting re-review
- Keep PR scope focused; large changes should be broken down

### Merging

1. Ensure all checks pass (tests, linting, etc.)
2. Resolve any merge conflicts
3. Use **"Squash and merge"** for feature branches
4. Delete the branch after merging

## Code Standards

### Dart/Flutter Style

- Follow the [Effective Dart](https://dart.dev/guides/language/effective-dart) guide
- Use `flutter format` before committing
- Maximum line length: 80 characters
- Use trailing commas for better formatting

### File Organization

- Place UI components in `/src/lib/widgets`
- Place models in `/src/lib/models`
- Place services in `/src/lib/services`
- Place utilities in `/src/lib/utils`

### Testing

- Write unit tests for business logic
- Write widget tests for UI components
- Aim for >70% code coverage on critical paths
- Place tests in `/src/test` mirroring the `/src/lib` structure

### Documentation

- Use dartdoc comments (`///`) for public APIs
- Include examples in documentation when helpful
- Keep inline comments concise and meaningful
- Update `/docs` for architectural decisions

## Questions?

If you have questions about contributing, please:
- Ask in the team Slack channel
- Raise it during a team meeting
- Contact the SCRUM Master

## Code of Conduct

Please review our [Code of Conduct](docs/CONDUCT.md) before contributing.

---

Thank you for contributing to Connectro! 🚀
